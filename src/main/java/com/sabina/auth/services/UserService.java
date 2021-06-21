package com.sabina.auth.services;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.sabina.auth.models.Role;
import com.sabina.auth.models.User;
import com.sabina.auth.repositories.RoleRepository;
import com.sabina.auth.repositories.UserRepository;



@Service
	public class UserService {
	    private UserRepository userRepository;
	    private RoleRepository roleRepository;
	    private BCryptPasswordEncoder bCryptPasswordEncoder;
	    
	    public UserService(UserRepository userRepository, RoleRepository roleRepository, BCryptPasswordEncoder bCryptPasswordEncoder)     {
	        this.userRepository = userRepository;
	        this.roleRepository = roleRepository;
	        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
	    }
	    
	    
	    // 1
	    public void saveWithUserRole(User user) {
	        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	        user.setRoles(roleRepository.findByName("ROLE_USER"));
	        userRepository.save(user);
	    }
	     
	     // 2 
	    public void saveUserWithAdminRole(User user) {
	        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
	        user.setRoles(roleRepository.findByName("ROLE_ADMIN"));
	        userRepository.save(user);
	    }    
	    
	    // 3
	    public User findByUsername(String username) {
	        return userRepository.findByUsername(username);
	    }
	    
	    public List<User> findAllUsers(){
	    	return userRepository.findAll();
	    }
	    
	    public User findUserById(Long id) {
	    	Optional<User> role = userRepository.findById(id);
			if(role.isPresent()) {
				return role.get();
			}
			else {
				return null;
			}
		}
	    
	    public Role findRoleById(Long id) {
	    	Optional<Role> role = roleRepository.findRoleById(id);
			if(role.isPresent()) {
				return role.get();
			}
			else {
				return null;
			}
		}
	    
	    public Role saveRole(Role role) {
			return roleRepository.save(role);
		}
	    
	    public void deleteUser(Long id) {
			userRepository.deleteById(id);
		}
	    
	    public User findByEmail(String email) {
	        return userRepository.findByEmail(email);
	    }
	    
//	    public boolean authenticateUser(String email, String password) {
//	        // first find the user by email
//	        User user = userRepository.findByEmail(email);
//	        // if we can't find it by email, return false
//	        if(user == null) {
//	            return false;
//	        } else {
//	            // if the passwords match, return true, else, return false
//	            if(BCrypt.checkpw(password, user.getPassword())) {
//	                return true;
//	            } else {
//	                return false;
//	            }
//	        }
//	    }
	}




