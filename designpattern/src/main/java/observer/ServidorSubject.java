package observer;

import java.util.ArrayList;
import java.util.List;

public class ServidorSubject implements Subject {
    private List<Observer> inscritos = new ArrayList<>();
    private String dns;

    public ServidorSubject(String dns) {
        super();
        this.dns = dns;
    }

    public void inscrever(Observer o) {
        inscritos.add(o);
    }

    public void desinscrever(Observer o) {
        if (inscritos.remove(o))
            System.out.println(o + " desinscrito do servidor " + this);

    }

    public void notificarTodos() {
        for (Observer o : inscritos) {
            o.notificar(this);
        }
    }

    @Override
    public String toString() {
        return dns;
    }

    public String getDns() {
        return dns;
    }

    public void setDns(String dns) {
        this.dns = dns;
    }

}
