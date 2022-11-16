package com.vitoria.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TaylorsSongs implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Column(name="song")
	private String song;
	@Column(name="quote")
	private String quote;
	@Column(name="inspired_by_which_lover", nullable=true)
	private String whoWasItAbout;
	
	@Column(name="taylors_album")
	private TaylorsAlbums album;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="songs_id")
	private Integer songsId;
	
	
	public TaylorsSongs() {
		
	}
	
	public TaylorsSongs(String song, String quote, String whoWasItAbout, TaylorsAlbums album, Integer songsId) {
		this.song = song;
		this.quote = quote;
		this.whoWasItAbout=whoWasItAbout;
		this.songsId=songsId;
		this.album=album;
	}
	

	public String getSong() {
		return song;
	}

	public void setSong(String song) {
		this.song = song;
	}

	public String getQuote() {
		return quote;
	}

	public void setQuote(String quote) {
		this.quote = quote;
	}

	public String getWhoWasItAbout() {
		return whoWasItAbout;
	}

	public void setWhoWasItAbout(String whoWasItAbout) {
		this.whoWasItAbout = whoWasItAbout;
	}

	public TaylorsAlbums getAlbum() {
		return album;
	}

	public void setAlbum(TaylorsAlbums album) {
		this.album = album;
	}

	public Integer getSongsId() {
		return songsId;
	}

	public void setSongsId(Integer songsId) {
		this.songsId = songsId;
	}
}
