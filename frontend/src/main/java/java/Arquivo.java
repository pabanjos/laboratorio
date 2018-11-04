package java;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Arquivo {

	public static void main(final String[] args) {
		try {
			final Arquivo arquivo = new Arquivo();
			arquivo.criar(".csv");
			System.out.println(arquivo.ler());
		} catch (final IOException e) {
			e.printStackTrace();
		}
	}

	public void criar(final String formato) throws IOException {
		final File diretorio = new File("C:/arquivos");
		if (!diretorio.exists()) {
			diretorio.mkdir();
		}
		final FileWriter fw = new FileWriter(diretorio + "arquivo" + formato);
		final List<String> lista = new ArrayList<String>();
		lista.add("valor1;valor2;valor3\n");
		lista.add("valor4;valor5;valor6\n");
		lista.add("valor7;valor8;valor9");
		for (final String valor : lista) {
			fw.write(valor);
		}
		fw.flush();
		fw.close();
	}

	public String ler() throws IOException {
		final FileReader fileReader = new FileReader("C:/arquivos/arquivo.csv");
		final char[] ch = new char[500];
		fileReader.read(ch);
		String string = "";
		for (final char c : ch) {
			string += c;
		}
		fileReader.close();
		return string;
	}
}