package JavaEE;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Month;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

@WebServlet("/Control")
public class Control extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String action = req.getParameter("action");
		try {
			if (action.equals("serverSentEvents")) {
				res.setContentType("text/event-stream");
				res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
				res.setCharacterEncoding("UTF-8");
				res.getWriter().write("retry: " + "10000\n");
				res.getWriter().write("data:");
				res.getWriter().write(new DaoManager().selectAll().toString());
				res.getWriter().write("\n\n");
				res.getWriter().flush();
				res.getWriter().close();

			} else if (action.equals("all")) {
				res.setContentType("application/json");
				res.setCharacterEncoding("UTF-8");
				res.getWriter().write(new DaoManager().selectAll().toString());
				res.getWriter().flush();
				res.getWriter().close();

			} else if (action.equals("filtroNoMySQL")) {
				String title = req.getParameter("title");
				Integer released1 = Integer.parseInt(req.getParameter("released1"));
				Integer released2 = Integer.parseInt(req.getParameter("released2"));
				Integer start = Integer.parseInt(req.getParameter("start"));
				Integer quantity = Integer.parseInt(req.getParameter("quantity"));
				res.setContentType("application/json");
				res.setCharacterEncoding("UTF-8");
				res.getWriter()
						.write(new DaoManager().filterByMySQL(title, released1, released2, start, quantity).toString());
				res.getWriter().flush();
				res.getWriter().close();

			} else if (action.equals("genres")) {
				res.setCharacterEncoding("UTF-8");
				res.getWriter().write(new DaoManager().selectGenres());
				res.getWriter().flush();
				res.getWriter().close();

			} else if (action.equals("directors")) {
				String genre = req.getParameter("genre");
				res.setCharacterEncoding("UTF-8");
				res.getWriter().write(new DaoManager().selectDirectors(genre));
				res.getWriter().flush();
				res.getWriter().close();

			} else if (action.equals("chartist")) {
				res.setContentType("application/json");
				res.setCharacterEncoding("UTF-8");
				res.getWriter().write(new DaoManager().selectChartist());
				res.getWriter().flush();
				res.getWriter().close();

			} else if (action.equals("filtroNoJava")) {
				List<Data> list = new DaoManager().selectAll();
				String title = req.getParameter("title");
				String genre = req.getParameter("genre");
				String protagonist = req.getParameter("protagonist");
				String director = req.getParameter("director");
				String released = req.getParameter("released");
				List<Data> list2 = list.stream()
						.filter(item -> item.getTitle() == null
								|| item.getTitle().toString().toLowerCase().contains(title.toLowerCase()))
						.filter(item -> item.getGenre() == null
								|| item.getGenre().toString().toLowerCase().contains(genre.toLowerCase()))
						.filter(item -> item.getProtagonist() == null
								|| item.getProtagonist().toString().toLowerCase().contains(protagonist.toLowerCase()))
						.filter(item -> item.getDirector() == null
								|| item.getDirector().toString().toLowerCase().contains(director.toLowerCase()))
						.filter(item -> item.getReleased() == null
								|| item.getReleased().toString().toLowerCase().contains(released.toLowerCase()))
						.collect(Collectors.toList());
				req.setAttribute("list", list2);
				req.getRequestDispatcher("filtroNoJava.jsp").forward(req, res);

			} else if (action.equals("upload")) {
				MultipartRequest mr = new MultipartRequest(req, getServletContext().getRealPath("Imagens/"));
				req.setAttribute("msg", getServletContext().getRealPath("Imagens/").concat(mr.getFilesystemName("foto")));
				req.setAttribute("imagem", "Imagens/" + mr.getFilesystemName("foto"));
				req.getRequestDispatcher("upload.jsp").forward(req, res);

			} else if (action.equals("date")) {
				String data = req.getParameter("data");
				LocalDateTime localDateTime = LocalDateTime.parse(data);
				String dataFormatada = localDateTime.format(DateTimeFormatter.ofPattern("dd/MM/yyyy hh:mm:ss"));
				req.setAttribute("dataFormatada", dataFormatada);
				int dia = localDateTime.getDayOfMonth();
				Month mes = localDateTime.getMonth();
				int ano = localDateTime.getYear();
				LocalDate localDate = LocalDate.of(ano, mes, dia);
				req.setAttribute("atual", localDate.isEqual(LocalDate.now()) ? "sim" : "não");
				req.setAttribute("segundos", localDateTime.until(LocalDateTime.now(), ChronoUnit.SECONDS));
				req.setAttribute("minutos", localDateTime.until(LocalDateTime.now(), ChronoUnit.MINUTES));
				req.setAttribute("horas", localDateTime.until(LocalDateTime.now(), ChronoUnit.HOURS));
				req.setAttribute("dias", localDateTime.until(LocalDateTime.now(), ChronoUnit.DAYS));
				req.setAttribute("meses", localDateTime.until(LocalDateTime.now(), ChronoUnit.MONTHS));
				req.setAttribute("anos", localDateTime.until(LocalDateTime.now(), ChronoUnit.YEARS));
				req.getRequestDispatcher("data.jsp").forward(req, res);

			} else if (action.equals("escrever")) {
				String entrada = req.getParameter("entrada");
				File diretorio = new File("C:\\arquivos\\");
				if (!diretorio.exists()) {
					diretorio.mkdir();
				}
				FileWriter fw = new FileWriter("C:\\arquivos\\arquivo.txt");
				fw.write(entrada);
				fw.flush();
				fw.close();
				req.setAttribute("saida", "Salvo em: C:\\arquivos\\arquivo.txt");
				req.getRequestDispatcher("arquivo.jsp").forward(req, res);

			} else if (action.equals("ler")) {
				String saida = "";
				try {
					FileReader file = new FileReader("C:\\arquivos\\arquivo.txt");
					BufferedReader br = new BufferedReader(file);
					while (br.ready()) {
						saida += br.readLine();
					}
					br.close();
					br.close();
				} catch (FileNotFoundException e) {
					saida = "Falha: " + e.getMessage();
				}
				req.setAttribute("saida", saida);
				req.getRequestDispatcher("arquivo.jsp").forward(req, res);

			} else if (action.equals("exportar")) {
				File diretorio = new File("C:\\arquivos\\");
				if (!diretorio.exists()) {
					diretorio.mkdir();
				}
				FileWriter fw = new FileWriter("C:\\arquivos\\arquivo.csv");
				List<Data> lista = new DaoManager().selectAll();
				String texto = "";
				for (Data data : lista) {
					texto += data.toCSV();
				}
				fw.write(texto);
				fw.flush();
				fw.close();
				req.getRequestDispatcher("arquivo.jsp").forward(req, res);

			} else if (action.equals("importar")) {
				FileReader file = new FileReader("C:\\arquivos\\arquivo.csv");
				BufferedReader reader = new BufferedReader(file);
				List<Data> lista = new ArrayList<Data>();
				while (reader.ready()) {
					String linha = reader.readLine();
					String[] dados = linha.split("\t");
					lista.add(new Data(dados));
				}
				reader.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}