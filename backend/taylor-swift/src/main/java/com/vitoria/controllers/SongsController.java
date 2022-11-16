package com.vitoria.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.vitoria.models.TaylorsSongs;
import com.vitoria.service.SongsService;

@RestController
@RequestMapping("/songs")
public class SongsController {

	@Autowired
	private SongsService service;
	
	
	@GetMapping
	public ResponseEntity<List<TaylorsSongs>> findAll(){
		List<TaylorsSongs> songs=service.findAll();
		return ResponseEntity.ok().body(songs);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Optional<TaylorsSongs>> findById(@PathVariable Integer id){
		Optional<TaylorsSongs> song=service.findById(id);
		return ResponseEntity.ok().body(song);
	}
	
	@PostMapping("/{id}")
	public ResponseEntity<TaylorsSongs> insert(@RequestBody TaylorsSongs song){
		service.insert(song);
		return ResponseEntity.ok().body(song);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		service.delete(id);
		return ResponseEntity.noContent().build();
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<TaylorsSongs> update(@PathVariable Integer id, @RequestBody TaylorsSongs song){
		song=service.update(id, song);
		return ResponseEntity.ok().body(song);
	}
}
