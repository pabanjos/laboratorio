package observer;

public interface Subject {

	void inscrever(Observer o);

	void desinscrever(Observer o);

	void notificarTodos();

}
