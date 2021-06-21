package com.sabina.auth.services;

import java.util.List;
import java.util.Optional;


import org.springframework.stereotype.Service;

import com.sabina.auth.models.Story;
import com.sabina.auth.repositories.RoleRepository;
import com.sabina.auth.repositories.StoryRepository;

import com.sabina.auth.repositories.UserRepository;

@Service

public class StoryService {
	private final StoryRepository storyRepository;
	private final UserRepository userRepository;
    private final RoleRepository roleRepository;
   

	public StoryService(StoryRepository storyRepository, UserRepository userRepository, RoleRepository roleRepository) {
		this.storyRepository = storyRepository;
		this.userRepository = userRepository;
        this.roleRepository = roleRepository;
     
	}

	public List<Story> allStories(){
		return storyRepository.findAll();
	}

	public Story findStory(Long id) {
		Optional<Story> optStory = storyRepository.findById(id);

		if(optStory.isPresent()) {
			return optStory.get();
		} else {
			return null;
		}
	}
	
	public Story saveStory(Story story) {
		return storyRepository.save(story);
	}
	
	public void deleteStory(Long id) {
		storyRepository.deleteById(id);
	}

}
