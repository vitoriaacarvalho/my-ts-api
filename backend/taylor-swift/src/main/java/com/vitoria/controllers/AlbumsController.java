package com.vitoria.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vitoria.models.TaylorsAlbums;
import com.vitoria.repositories.AlbumsRepository;
import com.vitoria.utils.ShuffleNumbers;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping(value="/albums")
@Log4j2
@CrossOrigin(origins = "*")
public class AlbumsController {
	
	@Autowired
	private AlbumsRepository repo;
	@Autowired
	private ShuffleNumbers shuffle;
	
	@GetMapping
	public List<TaylorsAlbums> findAll(){
		return repo.findAll();
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Optional<TaylorsAlbums>> findById(@PathVariable Integer id){
		Optional<TaylorsAlbums> album=repo.findById(id);
		return ResponseEntity.ok().body(album);
	}
	
	@PostMapping
	public TaylorsAlbums insert(@RequestBody TaylorsAlbums album){
		return repo.save(album);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<TaylorsAlbums> update(@PathVariable Integer id, @RequestBody TaylorsAlbums album){
		TaylorsAlbums updatedAlbum=album;
		updatedAlbum.setAlbum(album.getAlbum());
		updatedAlbum.setSongRecommendation(album.getSongRecommendation());
		updatedAlbum=repo.save(updatedAlbum);
		return ResponseEntity.ok().body(updatedAlbum);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		repo.deleteById(id);
		return ResponseEntity.noContent().build();
	}
	
	@GetMapping(value="/recommendations")
	public ResponseEntity<String> getMeARecommendation() {
		TaylorsAlbums album=repo.findById(shuffle.shuffle()).get();
		String song=album.getSongRecommendation();
		return ResponseEntity.ok().body(song);
	}
}
