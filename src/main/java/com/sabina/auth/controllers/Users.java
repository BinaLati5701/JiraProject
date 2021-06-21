package com.sabina.auth.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

//import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sabina.auth.models.Role;
import com.sabina.auth.models.Story;
import com.sabina.auth.models.User;
import com.sabina.auth.services.StoryService;
import com.sabina.auth.services.UserService;
import com.sabina.auth.validator.UserValidator;



@Controller
public class Users {
	private final UserService userService;
	private final UserValidator userValidator;
	private final StoryService storyService;
	public Users(UserService userService, UserValidator userValidator, StoryService storyService) {
		this.userService=userService;
		this.userValidator=userValidator;
		this.storyService = storyService;
	}
	
	
	
    
	@RequestMapping("/registration")
    public String registerForm(@Valid @ModelAttribute("user") User user) {
        return "registrationPage.jsp";
    }
	
	@PostMapping("/registration")
    public String registration(@Valid @ModelAttribute("user") User user,
    		BindingResult result, 
    		Model model, 
    		HttpSession session) {
		userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "registrationPage.jsp";
        }
        userService.saveWithUserRole(user);
        return "redirect:/login";
    }
    
	@RequestMapping("/login")
	public String login(@RequestParam(value="error", required=false) String error,
			@RequestParam(value="logout", required=false) String logout, 
			Model model) {
        if(error != null) {
            model.addAttribute("errorMessage", "Invalid Credentials, Please try again.");
        }
        if(logout != null) {
            model.addAttribute("logoutMessage", "Logout Successful!");
        }
        return "loginPage.jsp";
    }
	
	@RequestMapping(value = {"/", "/home"})
    public String home(Principal principal, Model model) {
        // 1
        String username = principal.getName();
        model.addAttribute("currentUser", userService.findByUsername(username));
        return "homePage.jsp";
    }

	
	
	 @RequestMapping("/admin")
	    public String adminPage(Principal principal, Model model) {
	        String username = principal.getName();
	       
	        model.addAttribute("currentUser", userService.findByUsername(username));
	        model.addAttribute("all_users", userService.findAllUsers());
	        return "adminPage.jsp";
	    }
	 
	 
//	 @PostMapping("/makeadmin/{id}")
//	 public String makeAdmin(@RequestParam(value="id") Long id, HttpSession session) {
//		 
//		 Long userId = (Long) session.getAttribute("userId");
//		 User u = userService.findUserById(userId);
//		 Role role = userService.findRoleById(id);
//		 
//		 List<User> roles = role.getUsers();
//		 roles.add(u);
//		 
//		 role.setUsers(roles);
//		 userService.saveRole(role);
//		 userService.saveUserWithAdminRole(u);
//		 
//		
//		return "redirect:/admin"; 
//	
//	 }
	 
//	 @RequestMapping(value="/makeadmin/{id}/delete", method=RequestMethod.DELETE)
//		public String deleteTask(
//				@PathVariable("id") 
//				Long userId) {
//		
//			userService.deleteUser(userId);		
//			return "redirect:/dashboard";			
//		}
	 
	 /*===========================================================================
		 * BOARD PAGE
		 *  =========================================================================
		 */
		
		@RequestMapping("/boards")
		 public String viewBoard(Principal principal, Model model) {
			 String username = principal.getName();
		     model.addAttribute("currentUser", userService.findByUsername(username));
//		     model.addAttribute("tasks", taskService.alltasks());
		     return "boardPage.jsp";

		 }
		
		 /*===========================================================================
		 * PROJECTS PAGE
		 *  =========================================================================
		 */
		
		@RequestMapping("/projects")
		 public String viewProjects(Principal principal, Model model) {
			 String username = principal.getName();
		     model.addAttribute("currentUser", userService.findByUsername(username));
		     return "table.jsp";

		 }
		
		 /*===========================================================================
		 * ISSUES PAGE
		 *  =========================================================================
		 */
		
		@RequestMapping("/issues")
		 public String viewIssues(Principal principal, Model model) {
			 String username = principal.getName();
		     model.addAttribute("currentUser", userService.findByUsername(username));
		     return "tableTwo.jsp";

		 }
		
		
		
	
		
		/*=================================================================================
		 * 		CREATE STORY
		 * ================================================================================
		 */
		
		@RequestMapping("/story/new")
		 public String newStory(Principal principal, Model model) {
			 String username = principal.getName();
		     model.addAttribute("currentUser", userService.findByUsername(username));
		     return "newStory.jsp";

		 }
		
		
//		@RequestMapping("/story/new")
//		public String createStory(Model model, HttpSession session) {
//			User logged_user = userService.findUserById((Long) session.getAttribute("userId"));
//			model.addAttribute("story", new Story());
//			model.addAttribute("logged_user", logged_user);
//			model.addAttribute("users", userService.findAllUsers());
//			return "newStory.jsp";
//		}	
		
		
		@RequestMapping(value="/story/new", method=RequestMethod.POST)
		public String addStory(@Valid @ModelAttribute("story") Story story, BindingResult result, HttpSession session, Model model) {
			User logged_user = userService.findUserById((Long) session.getAttribute("userId"));
			model.addAttribute("logged_user", logged_user);
			model.addAttribute("users", userService.findAllUsers());
			if(result.hasErrors()) {
				return "newStory.jsp";
			} else {
				storyService.saveStory(story);
				return "redirect:/boards";
			}
		}
		
		/*=================================================================================
		 * 		VIEW/SHOW STORY
		 * ================================================================================
		 */

		@RequestMapping("/story/{id}")
		public String showStory(@PathVariable("id") Long id, Model model) {
			model.addAttribute("story", storyService.allStories());
			return "userStory.jsp";
		}
		
		
		/*=================================================================================
		 * 		ACCESS ADMIN
		 * ================================================================================
		 */
		@RequestMapping("/accessadmin")
		public String access() {
			return "accessAdmin.jsp";
		}
		
	 
	
	
}




