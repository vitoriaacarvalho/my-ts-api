package com.vitoria.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vitoria.models.TaylorsAlbums;
import com.vitoria.repositories.AlbumsRepository;
import com.vitoria.service.exceptions.ResourceNotFoundException;

@Service
public class AlbumsService {
	@Autowired
	private AlbumsRepository repo;
	
	public List<TaylorsAlbums> findAll(){
		return repo.findAll();
	}
	
	public Optional<TaylorsAlbums> findById(Integer id) {
		return repo.findById(id);
	}
	
	public TaylorsAlbums insert(TaylorsAlbums album) {
		return repo.save(album);
	}
	
	public void delete(Integer id) {
		repo.deleteById(id);
	}
	
	public TaylorsAlbums update(Integer id, TaylorsAlbums album) {
		try {
			@SuppressWarnings("deprecation")
			TaylorsAlbums entity=repo.getById(id);
			updateData(entity,album);
			return repo.save(entity);
		}
		catch(EntityNotFoundException e) {
			throw new ResourceNotFoundException(id);
		}
	}

	private void updateData(TaylorsAlbums entity, TaylorsAlbums album) {
		entity.setAlbum(album.getAlbum());
	}
	
}
