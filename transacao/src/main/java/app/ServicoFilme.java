package app;

import java.util.List;

import business.Data;
import business.RepositorioFilme;

public class ServicoFilme {

	// @Inject
	private final RepositorioFilme repositorio;

	public ServicoFilme() {
		super();
		repositorio = new RepositorioFilme();
	}

	public List<Data> obter() {
		return repositorio.obter();
	}

	public List<Data> pesquisarPor(final String titulo) {
		return repositorio.pesquisarPor(titulo);
	}

	public Data salvar(final Data d) {
		return repositorio.salvar(d);
	}

	public Data editar(final Data d) {
		return repositorio.editar(d);
	}

	public void deletar(final Integer id) {
		repositorio.deletar(id);
	}

}
