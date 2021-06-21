package com.sabina.auth.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sabina.auth.models.Role;


@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
	
	List<Role> findAll();
    
    List<Role> findByName(String name);
    Optional<Role>findRoleById(Long id);
    void deleteById(Long id);
	Role save(Role x);
}




