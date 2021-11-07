package observer;

public class PessoaObserver implements Observer {
	private String nome;
	private String ip;

	public PessoaObserver(String nome, String ip) {
		super();
		this.nome = nome;
		this.ip = ip;
	}

	public void notificar(Subject s) {
		System.out.println(this + " notificado de " + s);
	}

	@Override
	public String toString() {
		return nome;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

}
