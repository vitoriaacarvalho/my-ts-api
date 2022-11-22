package com.vitoria.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.vitoria.models.TaylorsSongs;
import com.vitoria.repositories.SongsRepository;
import com.vitoria.service.exceptions.ResourceNotFoundException;
import com.vitoria.utils.ShuffleNumbers;

@Service
public class SongsService {
	
	@Autowired
	private SongsRepository repo;
	
	@Autowired
	private ShuffleNumbers shuffle;
	
	
	public List<TaylorsSongs> findAll(){
		return repo.findAll();
	}
	
	public Optional<TaylorsSongs> findById(Integer id) {
		return repo.findById(id);
	}
	
	public TaylorsSongs insert(TaylorsSongs song) {
		return repo.save(song);
	}
	
	public void delete(Integer id) {
		repo.deleteById(id);
	}
	
	public TaylorsSongs update(Integer id, TaylorsSongs song) {
		try {
			@SuppressWarnings("deprecation")
			TaylorsSongs entity=repo.getById(id);
			updateData(entity,song);
			return repo.save(entity);
		}
		catch(EntityNotFoundException e) {
			throw new ResourceNotFoundException(id);
		}
	}

	private void updateData(TaylorsSongs entity, TaylorsSongs song) {
		entity.setSong(song.getSong());
	}
	
	public String getMeAQuote() {
		TaylorsSongs song=repo.findById(shuffle.shuffle()).get();
		return song.getQuote();
	}
	
	
}
