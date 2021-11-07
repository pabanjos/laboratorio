import observer.Observer;
import observer.PessoaObserver;
import observer.ServidorSubject;
import observer.Subject;

public class Principal {
    static Subject servidor1 = new ServidorSubject("dns1");
    static Subject servidor2 = new ServidorSubject("dns2");
    static Subject servidor3 = new ServidorSubject("dns3");

    static Observer pessoa1 = new PessoaObserver("nome1", "ip1");
    static Observer pessoa2 = new PessoaObserver("nome2", "ip2");
    static Observer pessoa3 = new PessoaObserver("nome3", "ip3");

    public static void main(String[] args) {
        servidor1.inscrever(pessoa1);
        servidor2.inscrever(pessoa2);
        servidor3.inscrever(pessoa3);

        servidor2.desinscrever(pessoa2);

        servidor1.notificarTodos();
        servidor2.notificarTodos();
        servidor3.notificarTodos();
    }
}
