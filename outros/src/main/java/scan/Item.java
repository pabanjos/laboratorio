package scan;

public class Item {
	String file = "";
	int pastas = 0;
	int arquivos = 0;
	
	@Override
	public String toString() {
		return file;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String string) {
		this.file = string;
	}

	public int getPastas() {
		return pastas;
	}

	public void setPastas(int pastas) {
		this.pastas = pastas;
	}

	public int getArquivos() {
		return arquivos;
	}

	public void setArquivos(int arquivos) {
		this.arquivos = arquivos;
	}
}
