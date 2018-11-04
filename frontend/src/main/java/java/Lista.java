package java;

import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

import javaEE.DaoManager;
import javaEE.Data;

public class Lista {
	public static void main(final String[] args) {
		List<Data> lista = null;

		try {
			lista = new DaoManager().selectAll();
		} catch (final Exception e) {
			e.printStackTrace();
		}

		lista.stream().filter(item -> item.getDirector().equals("Martin Scorsese")).forEach(System.out::println);

		final Map<Object, List<Data>> map = lista.stream().collect(Collectors.groupingBy(Data::getGenre));
		for (final Entry<Object, List<Data>> data : map.entrySet()) {
			System.err.println(data.getKey() + " - " + data.getValue());
		}
	}
}
