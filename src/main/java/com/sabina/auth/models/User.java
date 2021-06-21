package com.sabina.auth.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.Size;



@Entity
	@Table(name="users")
	public class User {
	    
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	    
	    @Size(min=3)
	    private String username;
	    
	    @Size(min=3, message="FirstName must be at least 3 characters long!")
	    private String firstName;
	    @Size(min=3, message="LastName must be at least 3 characters long!")
	    private String lastName;
	    
	    @Email(message="Email must be present and  valid format")
	    private String email;
	    
	    @Size(min=5)
	    private String password;
	    
	    @Transient
	    private String passwordConfirmation;
	    
	    @Column(updatable=false)
	    private Date createdAt;
	    private Date updatedAt;
	    
	    
	    /*=====================================
		 * MANY TO MANY RELATIONSHIP
		 * ====================================
		 */
	    @ManyToMany(fetch = FetchType.EAGER)
	    @JoinTable(
	        name = "users_roles", 
	        joinColumns = @JoinColumn(name = "user_id"), 
	        inverseJoinColumns = @JoinColumn(name = "role_id"))
	    private List<Role> roles;
	    
	    /*=====================================
		 * ONE TO MANY RELATIONSHIP
		 * ====================================
		 */
		@OneToMany(mappedBy="story_creator",fetch=FetchType.LAZY)
		private List<Story> storiesCreated;
		
		@OneToMany(mappedBy="task_creator",fetch=FetchType.LAZY)
		private List<Task> tasksCreated;
		
		/*=====================================
		 * ONE TO MANY RELATIONSHIP
		 * ====================================
		 */
		@OneToMany(mappedBy="assignee",fetch=FetchType.LAZY)
		private List<Task> tasksAssigned;
	    
	    public User() {
	    }
	    

		public User(@Size(min = 3) String username,
				@Size(min = 3, message = "FirstName must be at least 3 characters long!") String firstName,
				@Size(min = 3, message = "LastName must be at least 3 characters long!") String lastName,
				@Email(message = "Email must be present and  valid format") String email,
				@Size(min = 5) String password, String passwordConfirmation, List<Role> roles) {
		
			this.username = username;
			this.firstName = firstName;
			this.lastName = lastName;
			this.email = email;
			this.password = password;
			this.passwordConfirmation = passwordConfirmation;
			this.roles = roles;
		}





		public Long getId() {
			return id;
		}





		public void setId(Long id) {
			this.id = id;
		}





		public String getUsername() {
			return username;
		}





		public void setUsername(String username) {
			this.username = username;
		}





		public String getFirstName() {
			return firstName;
		}





		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}





		public String getLastName() {
			return lastName;
		}





		public void setLastName(String lastName) {
			this.lastName = lastName;
		}





		public String getEmail() {
			return email;
		}





		public void setEmail(String email) {
			this.email = email;
		}





		public String getPassword() {
			return password;
		}





		public void setPassword(String password) {
			this.password = password;
		}





		public String getPasswordConfirmation() {
			return passwordConfirmation;
		}





		public void setPasswordConfirmation(String passwordConfirmation) {
			this.passwordConfirmation = passwordConfirmation;
		}





		public Date getCreatedAt() {
			return createdAt;
		}





		public void setCreatedAt(Date createdAt) {
			this.createdAt = createdAt;
		}





		public Date getUpdatedAt() {
			return updatedAt;
		}





		public void setUpdatedAt(Date updatedAt) {
			this.updatedAt = updatedAt;
		}





		public List<Role> getRoles() {
			return roles;
		}





		public void setRoles(List<Role> roles) {
			this.roles = roles;
		}


		


		
}
