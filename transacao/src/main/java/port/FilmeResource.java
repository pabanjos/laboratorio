package port;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import app.ServicoFilme;
import business.Data;

@Path("/filme")
public class FilmeResource {

	// @Inject
	ServicoFilme servico;

	public FilmeResource() {
		super();
		servico = new ServicoFilme();
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response get() {
		try {
			final List<Data> lista = servico.obter();
			return Response.ok(lista).build();
		} catch (final Exception e) {
			return Response.status(Status.INTERNAL_SERVER_ERROR.getStatusCode(), e.getMessage()).build();
		}
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Response pesquisar(@QueryParam("titulo") final String titulo) {
		try {
			final List<Data> lista = servico.pesquisarPor(titulo);
			return Response.ok(lista).build();
		} catch (final Exception e) {
			return Response.status(Status.INTERNAL_SERVER_ERROR.getStatusCode(), e.getMessage()).build();
		}
	}

	@POST
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response salvar(final Data d) {
		try {
			final Data data = servico.salvar(d);
			return Response.ok(data).build();
		} catch (final Exception e) {
			return Response.status(Status.INTERNAL_SERVER_ERROR.getStatusCode(), e.getMessage()).build();
		}
	}

	@PUT
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.APPLICATION_JSON)
	public Response editar(final Data d) {
		try {
			final Data data = servico.editar(d);
			return Response.ok(data).build();
		} catch (final Exception e) {
			return Response.status(Status.INTERNAL_SERVER_ERROR.getStatusCode(), e.getMessage()).build();
		}
	}

	@DELETE
	@Path("{id}")
	@Produces(MediaType.APPLICATION_JSON)
	public Response deletar(@PathParam("id") final Integer id) {
		try {
			servico.deletar(id);
			return Response.noContent().build();
		} catch (final Exception e) {
			return Response.status(Status.INTERNAL_SERVER_ERROR.getStatusCode(), e.getMessage()).build();
		}
	}
}
