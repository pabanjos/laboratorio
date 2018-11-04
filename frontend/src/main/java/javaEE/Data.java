package javaEE;

public class Data {
	private Object idData;
	private Object what;
	private Object poster;
	private Object title;
	private Object genre;
	private Object protagonist;
	private Object director;
	private Object extra;
	private Object released;
	private Object rating;

	public Data(final Object idData, final Object what, final Object poster, final Object title, final Object genre,
			final Object protagonist, final Object director, final Object extra, final Object released,
			final Object rating) {
		this.idData = idData;
		this.what = what;
		this.poster = poster;
		this.title = title;
		this.genre = genre;
		this.protagonist = protagonist;
		this.director = director;
		this.extra = extra;
		this.released = released;
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "{\"idData\":\"" + idData + "\", " + "" + "\"what\":\"" + what + "\", " + "" + "\"poster\":\"" + poster
				+ "\", " + "" + "\"title\":\"" + title + "\", " + "" + "\"genre\":\"" + genre + "\", " + ""
				+ "\"protagonist\":\"" + protagonist + "\", " + "" + "\"director\":\"" + director + "\", " + ""
				+ "\"extra\":\"" + extra + "\", " + "" + "\"released\":\"" + released + "\", " + "" + "\"rating\":\""
				+ rating + "\"}";
	}

	public Object getIdData() {
		return idData;
	}

	public void setIdData(final Object idData) {
		this.idData = idData;
	}

	public Object getWhat() {
		return what;
	}

	public void setWhat(final Object what) {
		this.what = what;
	}

	public Object getPoster() {
		return poster;
	}

	public void setPoster(final Object poster) {
		this.poster = poster;
	}

	public Object getTitle() {
		return title;
	}

	public void setTitle(final Object title) {
		this.title = title;
	}

	public Object getGenre() {
		return genre;
	}

	public void setGenre(final Object genre) {
		this.genre = genre;
	}

	public Object getProtagonist() {
		return protagonist;
	}

	public void setProtagonist(final Object protagonist) {
		this.protagonist = protagonist;
	}

	public Object getDirector() {
		if (director == null) {
			director = "nao tem";
		}
		return director;
	}

	public void setDirector(final Object director) {
		this.director = director;
	}

	public Object getExtra() {
		return extra;
	}

	public void setExtra(final Object extra) {
		this.extra = extra;
	}

	public Object getReleased() {
		return released;
	}

	public void setReleased(final Object released) {
		this.released = released;
	}

	public Object getRating() {
		return rating;
	}

	public void setRating(final Object rating) {
		this.rating = rating;
	}

}
