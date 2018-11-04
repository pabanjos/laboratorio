package teste;

import java.util.Objects;

public class Teste {
    private int id;

    @Override
    public String toString() {
        return "Teste{" +
                "id=" + id +
                '}';
    }

    public Teste(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Teste teste = (Teste) o;
        return id == teste.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
