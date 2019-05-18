package pl.jnowacki;

import java.io.Serializable;
import java.util.Date;

public class Album implements Serializable {

    private String title;
    private String artist;
    private String genre;
    private int year;
    private Date addedDate;

    public Album() {
        this.addedDate = new Date();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public boolean isValid() {
        return title != null && !title.isEmpty()
                && artist != null && !artist.isEmpty()
                && genre != null && !genre.isEmpty()
                && year > 1900;
    }

    @Override
    public String toString() {
        return "Album{" +
                "title='" + title + '\'' +
                ", artist='" + artist + '\'' +
                ", genre='" + genre + '\'' +
                ", year=" + year +
                ", addedDate=" + addedDate +
                '}';
    }
}
