package com.vitoria.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vitoria.models.TaylorsSongs;

@Repository
public interface SongsRepository extends JpaRepository<TaylorsSongs, Integer>{

}
