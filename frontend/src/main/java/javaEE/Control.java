package javaEE;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/Control")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException {
		final String action = request.getParameter("action");
		try {
			if (action.equals("ajax")) {
				ajax(request, response);
			} else if (action.equals("serverSentEvents")) {
				serverSentEvents(request, response);
			} else if (action.equals("upload")) {
				upload(request, response);
			}
		} catch (final Exception e) {
			e.printStackTrace();
		}
	}

	protected void ajax(final HttpServletRequest request, final HttpServletResponse response) throws Exception {
		final Integer start = new Integer(request.getParameter("start"));
		final Integer qtd = new Integer(request.getParameter("qtd"));
		final List<Data> lista = new DaoManager().selectBetween(start, qtd);
		final PrintWriter pw = response.getWriter();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		pw.write(lista.toString());
		pw.flush();
		pw.close();
	}

	protected void serverSentEvents(final HttpServletRequest request, final HttpServletResponse response)
			throws Exception {
		response.setContentType("text/event-stream");
		response.setCharacterEncoding("UTF-8");
		final PrintWriter pw = response.getWriter();
		pw.write("retry: " + "1000\n");
		pw.write("data:[");
		final List<Data> lista = new DaoManager().selectAll();
		int x = 1;
		for (final Data valor : lista) {
			if (lista.size() != x) {
				pw.write(valor.toString().concat(", "));
			} else {
				pw.write(valor.toString());
			}
			x++;
		}
		pw.write("]\n\n");
		pw.flush();
		pw.close();
	}

	protected void upload(final HttpServletRequest request, final HttpServletResponse response)
			throws ServletException, IOException, FileUploadException {
		final DiskFileItemFactory factory = new DiskFileItemFactory();
		final ServletContext servletContext = getServletConfig().getServletContext();
		final File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
		factory.setRepository(repository);
		final ServletFileUpload upload = new ServletFileUpload(factory);
		final List<FileItem> items = upload.parseRequest(request);
		final Iterator<FileItem> iter = items.iterator();
		while (iter.hasNext()) {
			final FileItem item = iter.next();
			if (!item.isFormField()) {
				if (item.getContentType().equals("image/jpeg")) {
					final ServletContext context = request.getServletContext();
					final String path = context.getRealPath("/Imagens/");
					System.out.println("upado para: " + path + item.getName());
					final FileOutputStream fos = new FileOutputStream(path + item.getName());
					fos.write(item.get());
					fos.close();
				} else {
					request.setAttribute("msg", "Falha: apenas o formato image/jpeg é permitido !");
				}
			}
		}
		request.getRequestDispatcher("upload.jsp").forward(request, response);
	}
}