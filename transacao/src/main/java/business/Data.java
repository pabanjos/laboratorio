package business;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "data")
public class Data {

	@Id
	private Integer idData;
	@Column
	private String what;
	@Column
	private String poster;
	@Column
	private String title;
	@Column
	private String genre;
	@Column
	private String protagonist;
	@Column
	private String director;
	@Column
	private String extra;
	@Column
	private Integer released;
	@Column
	private Double rating;

	public Data() {
		super();
	}

	public Data(final Integer idData, final String what, final String poster, final String title, final String genre,
			final String protagonist, final String director, final String extra, final Integer released,
			final Double rating) {
		super();
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
		return "Data [idData=" + idData + ", what=" + what + ", poster=" + poster + ", title=" + title + ", genre="
				+ genre + ", protagonist=" + protagonist + ", director=" + director + ", extra=" + extra + ", released="
				+ released + ", rating=" + rating + "]";
	}

	public Integer getIdData() {
		return idData;
	}

	public void setIdData(final Integer idData) {
		this.idData = idData;
	}

	public String getWhat() {
		return what;
	}

	public void setWhat(final String what) {
		this.what = what;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(final String poster) {
		this.poster = poster;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(final String title) {
		this.title = title;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(final String genre) {
		this.genre = genre;
	}

	public String getProtagonist() {
		return protagonist;
	}

	public void setProtagonist(final String protagonist) {
		this.protagonist = protagonist;
	}

	public String getDirector() {
		return director;
	}

	public void setDirector(final String director) {
		this.director = director;
	}

	public String getExtra() {
		return extra;
	}

	public void setExtra(final String extra) {
		this.extra = extra;
	}

	public Integer getReleased() {
		return released;
	}

	public void setReleased(final Integer released) {
		this.released = released;
	}

	public Double getRating() {
		return rating;
	}

	public void setRating(final Double rating) {
		this.rating = rating;
	}

}
