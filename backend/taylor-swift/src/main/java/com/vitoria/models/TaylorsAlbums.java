package com.vitoria.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TaylorsAlbums implements Serializable {
	private static final long serialVersionUID = 1L;

	@Column(name = "album")
	private String album;

	@Column(name = "song_recommendation")
	private String songRecommendation;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "albums_id")
	private Integer albumsId;

	public TaylorsAlbums() {

	}

	public TaylorsAlbums(String album, String songRecommendation, Integer albumsId) {
		this.album = album;
		this.songRecommendation = songRecommendation;
		this.albumsId = albumsId;
	}

	public String getAlbum() {
		return album;
	}

	public void setAlbum(String album) {
		this.album = album;
	}

	public String getsongRecommendation() {
		return songRecommendation;
	}

	public void ListsongRecommendation(String songRecommendation) {
		this.songRecommendation = songRecommendation;
	}

	public Integer getAlbumsId() {
		return albumsId;
	}

	public void ListAlbumsId(Integer albumsId) {
		this.albumsId = albumsId;
	}

}
