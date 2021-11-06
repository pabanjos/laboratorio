package business;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import config.FilmeDomain;

@SuppressWarnings("unchecked")
public class RepositorioFilme extends FilmeDomain {

	private EntityManager em;

	public List<Data> obter() {
		List<Data> lista = new ArrayList<Data>();
		em = getEntityManager();
		em.getTransaction().begin();

		final Query q = em.createQuery("select a from Data a", Data.class);
		lista = q.getResultList();

		em.getTransaction().commit();
		em.close();
		return lista;
	}

	public List<Data> pesquisarPor(final String titulo) {
		List<Data> lista = new ArrayList<Data>();
		em = getEntityManager();
		em.getTransaction().begin();

		final Query q = em.createQuery("select a from Data a where a.titulo like :titulo", Data.class);
		q.setParameter("titulo", titulo);
		lista = q.getResultList();

		em.getTransaction().commit();
		em.close();
		return lista;
	}

	public Data salvar(final Data d) {
		em = getEntityManager();
		em.getTransaction().begin();
		em.persist(d);
		em.flush();
		em.getTransaction().commit();
		em.close();
		return d;
	}

	public Data editar(final Data d) {
		em = getEntityManager();
		em.getTransaction().begin();
		final Data data = em.find(Data.class, d.getIdData());
		if (data == null) {
			throw new RuntimeException("não encontrado");
		} else {
			data.setTitle(d.getTitle());
		}
		em.flush();
		em.getTransaction().commit();
		em.close();
		return data;
	}

	public void deletar(final Integer id) {
		em = getEntityManager();
		em.getTransaction().begin();
		final Data data = em.find(Data.class, id);
		if (data == null) {
			throw new RuntimeException("não encontrado");
		} else {
			em.remove(data);
		}
		em.flush();
		em.getTransaction().commit();
		em.close();
	}
}
