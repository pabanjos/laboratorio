package config;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class FilmeDomain {

	private static EntityManagerFactory emf = null;
	private EntityManager em;

	private EntityManagerFactory getFactory() {
		if (emf == null) {
			emf = Persistence.createEntityManagerFactory("filmePU");
		}
		return emf;
	}

	public void instance() {
		em = getFactory().createEntityManager();
	}

	public EntityManager getEntityManager() {
		if (em == null) {
			instance();
		}
		return em;
	}

}
