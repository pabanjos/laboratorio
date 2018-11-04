package scan;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class Main {

	public static void main(String[] args) {
		List<Item> lista = new ArrayList<Item>();
		File file = new File("Z:\\");
		for (File f : file.listFiles()) {
			scan(lista, f);
		}
		for (Item item : lista) {
			System.out.print(item.getArquivos() + "      ");
			System.out.print(item.getPastas() + "      ");
			System.out.print(item.getFile());
			System.out.println();
		}
	}

	public static void scan(List<Item> lista, File file) {
		Item item = new Item();
		item.setFile(file.getPath());
		lista.add(item);
		if (file.listFiles() != null) {
			for (File f : file.listFiles()) {
				if (f.isDirectory()) {
					item.setPastas(item.getPastas() + 1);
					scan(lista, f);
				} else if (f.isFile()) {
					item.setArquivos(item.getArquivos() + 1);
				} else {
					System.err.println(f);
				}
			}
		}
	}
}
