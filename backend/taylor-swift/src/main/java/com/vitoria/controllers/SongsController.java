package com.vitoria.controllers;

import java.util.ArrayList;
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

import com.vitoria.models.TaylorsSongs;
import com.vitoria.repositories.SongsRepository;
import com.vitoria.utils.ShuffleNumbers;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping(value="/songs")
@CrossOrigin(origins = "*")
@Log4j2
public class SongsController {

	@Autowired
	private SongsRepository repo;
	@Autowired
	private ShuffleNumbers shuffle;
	
	@GetMapping
	public List<TaylorsSongs> findAll(){
		return repo.findAll();
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Optional<TaylorsSongs>> findById(@PathVariable Integer id){
		Optional<TaylorsSongs> song=repo.findById(id);
		return ResponseEntity.ok().body(song);
	}
	
	@PostMapping
	public TaylorsSongs insert(@RequestBody TaylorsSongs song){
		return repo.save(song);
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<TaylorsSongs> update(@PathVariable Integer id, @RequestBody TaylorsSongs song){
		TaylorsSongs updatedSong=song;
		updatedSong.setSong(song.getSong());
		updatedSong.setQuote(song.getQuote());
		updatedSong.setWhoWasItAbout(song.getWhoWasItAbout());
		updatedSong.setAlbum(song.getAlbum());
		updatedSong=repo.save(updatedSong);
		return ResponseEntity.ok().body(updatedSong);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		repo.deleteById(id);
		return ResponseEntity.noContent().build();
	}
	
	public String getMeAQuote() {
		TaylorsSongs song=repo.findById(shuffle.shuffle()).get();
		return song.getQuote();
	}
	
	@GetMapping(value="/quotes/{id}")
	public ResponseEntity<String> getQuotes() {
		TaylorsSongs song=repo.findById(shuffle.shuffle()).get();
		String quote=song.getQuote();
		return ResponseEntity.ok().body(quote);
	}
	
	
	
	
	
	
	
	
	
	
	
}
