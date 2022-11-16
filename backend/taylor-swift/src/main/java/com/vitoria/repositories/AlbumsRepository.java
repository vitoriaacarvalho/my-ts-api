package com.vitoria.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vitoria.models.TaylorsAlbums;
@Repository
public interface AlbumsRepository extends JpaRepository<TaylorsAlbums, Integer> {

}
