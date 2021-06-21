package com.sabina.auth.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sabina.auth.models.User;

@Repository
	public interface UserRepository extends CrudRepository<User, Long> {
	    User findByUsername(String username);
	    List<User> findAll();
	   Optional<User> findById(Long id);
	   User findByEmail(String email);
	   void deleteById(Long id);
		User save(User user);
	    
	}


	


