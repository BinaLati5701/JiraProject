package com.sabina.auth.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sabina.auth.models.Story;

@Repository
public interface StoryRepository extends CrudRepository<Story, Long> {
	List<Story> findAll();
	Optional<Story> findById(Long id);
	Story save(Story story);
	void deleteById(Long id);

}
