package JavaEE;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.List;

public class Data {
	private Object idData;
	private Object what = "";
	private Object poster = "";
	private Object title = "";
	private Object genre = "";
	private Object protagonist = "";
	private Object director = "";
	private Object extra = "";
	private Object released = 0;
	private Object rating = 0;
	private List<Data> list;
	private String dateTime;

	public Data() {
	}

	public Data(Object idData, Object what, Object poster, Object title, Object genre, Object protagonist, Object director, Object extra, Object released, Object rating) {
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

	public Data(String[] vetor) {
		this.idData = Integer.parseInt(vetor[0]);
		this.what = vetor[1];
		this.poster = vetor[2];
		this.title = vetor[3];
		this.genre = vetor[4];
		this.protagonist = vetor[5];
		this.director = vetor[6];
		this.extra = vetor[7];
		this.released = Integer.parseInt(vetor[8]);
		this.rating = Double.parseDouble(vetor[9]);
	}

	@Override
	public String toString() {
		if (what == null)
			what = "";
		if (poster == null)
			poster = "";
		if (title == null)
			title = "";
		if (genre == null)
			genre = "";
		if (protagonist == null)
			protagonist = "";
		if (director == null)
			director = "";
		if (extra == null)
			extra = "";
		if (released == null)
			released = 0;
		if (rating == null)
			rating = 0;
		return "{\"idData\":" + idData + ",\"what\":\"" + what + "\",\"poster\":\"" + poster + "\",\"title\":\"" + title + "\",\"genre\":\"" + genre + "\",\"protagonist\":\"" + protagonist + "\",\"director\":\"" + director + "\",\"extra\":\"" + extra + "\",\"released\":" + released + ",\"rating\":"
				+ rating + "}";
	}

	public String toCSV() {
		return idData + "\t" + what + "\t" + poster + "\t" + title + "\t" + genre + "\t" + protagonist + "\t" + director + "\t" + extra + "\t" + released + "\t" + rating + "\n";
	}

	public Object getIdData() {
		return idData;
	}

	public void setIdData(Object idData) {
		this.idData = idData;
	}

	public Object getWhat() {
		return what;
	}

	public void setWhat(Object what) {
		this.what = what;
	}

	public Object getPoster() {
		return poster;
	}

	public void setPoster(Object poster) {
		this.poster = poster;
	}

	public Object getTitle() {
		return title;
	}

	public void setTitle(Object title) {
		this.title = title;
	}

	public Object getGenre() {
		return genre;
	}

	public void setGenre(Object genre) {
		this.genre = genre;
	}

	public Object getProtagonist() {
		return protagonist;
	}

	public void setProtagonist(Object protagonist) {
		this.protagonist = protagonist;
	}

	public Object getDirector() {
		return director;
	}

	public void setDirector(Object director) {
		this.director = director;
	}

	public Object getExtra() {
		return extra;
	}

	public void setExtra(Object extra) {
		this.extra = extra;
	}

	public Object getReleased() {
		return released;
	}

	public void setReleased(Object released) {
		this.released = released;
	}

	public Object getRating() {
		return rating;
	}

	public void setRating(Object rating) {
		this.rating = rating;
	}

	public List<Data> getList() {
		try {
			list = new DaoManager().selectAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public String getDateTime() {
		dateTime = LocalDateTime.now().format(DateTimeFormatter.ofLocalizedDateTime(FormatStyle.MEDIUM));
		return dateTime;
	}

}
