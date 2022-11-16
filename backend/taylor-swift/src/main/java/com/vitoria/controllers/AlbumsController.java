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

import com.vitoria.models.TaylorsAlbums;
import com.vitoria.service.AlbumsService;

@RestController
@RequestMapping("/albums")
public class AlbumsController {
	
	@Autowired
	private AlbumsService service;
	
	
	@GetMapping
	public ResponseEntity<List<TaylorsAlbums>> findAll(){
		List<TaylorsAlbums> albums=service.findAll();
		return ResponseEntity.ok().body(albums);
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Optional<TaylorsAlbums>> findById(@PathVariable Integer id){
		Optional<TaylorsAlbums> album=service.findById(id);
		return ResponseEntity.ok().body(album);
	}
	
	@PostMapping("/{id}")
	public ResponseEntity<TaylorsAlbums> insert(@RequestBody TaylorsAlbums album){
		service.insert(album);
		return ResponseEntity.ok().body(album);
	}
	
	@DeleteMapping("/{id}")
	public ResponseEntity<Void> delete(@PathVariable Integer id){
		service.delete(id);
		return ResponseEntity.noContent().build();
	}
	
	@PutMapping("/{id}")
	public ResponseEntity<TaylorsAlbums> update(@PathVariable Integer id, @RequestBody TaylorsAlbums album){
		album=service.update(id, album);
		return ResponseEntity.ok().body(album);
	}
}
