package com.vitoria.controllers;

import java.net.URI;
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
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import com.vitoria.models.TaylorsSongs;
import com.vitoria.service.SongsService;

import lombok.extern.log4j.Log4j2;

@RestController
@RequestMapping(value="/songs")

@Log4j2
public class SongsController {

	@Autowired
	private SongsService service;
	
	
	@GetMapping
	@CrossOrigin(origins = "*")
	public ResponseEntity<List<TaylorsSongs>> findAll(){
		List<TaylorsSongs> songs=service.findAll();
		return ResponseEntity.ok().body(songs);
	}
	
	@GetMapping(value="/{id}")
	public ResponseEntity<Optional<TaylorsSongs>> findById(@PathVariable Integer id){
		Optional<TaylorsSongs> song=service.findById(id);
		return ResponseEntity.ok().body(song);
	}
	
	@PostMapping(value="/{id}")
	public ResponseEntity<TaylorsSongs> insert(@RequestBody TaylorsSongs song){
		service.insert(song);
		URI uri=ServletUriComponentsBuilder.fromCurrentRequest().path("/{id}")
				.buildAndExpand(song.getSongsId()).toUri();
		return ResponseEntity.created(uri).body(song);
	}
	
	@DeleteMapping(value="/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		service.delete(id);
		return ResponseEntity.noContent().build();
	}
	
	@PutMapping(value="/{id}")
	public ResponseEntity<TaylorsSongs> update(@PathVariable Integer id, @RequestBody TaylorsSongs song){
		song=service.update(id, song);
		return ResponseEntity.ok().body(song);
	}
}
