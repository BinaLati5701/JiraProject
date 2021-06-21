package com.sabina.auth.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="tasks")
public class Task {
	 @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;
	 
	 private String title;
	 private String priority;
	 private String status;
	 private String resolution;
	 private String label;
	 private String sprint;
	 private String description;
	 private String type;
	
	 
	 
	 
	 @Column(updatable=false)
	    private Date createdAt;
	    private Date updatedAt;
	    
	    /*=====================================
		 * MANY TO ONE RELATIONSHIP
		 * ====================================
		 */
	    @ManyToOne(fetch=FetchType.LAZY)
	    @JoinColumn(name="user_id")
	    private User task_creator;
	    
	    /*=====================================
		 * MANY TO ONE RELATIONSHIP
		 * ====================================
		 */
		@ManyToOne(fetch=FetchType.LAZY)
		@JoinColumn(name="assignee_id")
		private User assignee;
		
//		/*=====================================
//	     * MANY TO ONE RELATIONSHIP with story
//	     * ====================================
//	     */
//	    @ManyToOne(fetch=FetchType.LAZY)
//	    @JoinColumn(name="story_id")
//	    private Story related_story;

		public Task() {}

		public Task(String title, String priority, String status, String resolution, String label, String sprint,
				String description, String type, User task_creator, User assignee) {
			super();
			this.title = title;
			this.priority = priority;
			this.status = status;
			this.resolution = resolution;
			this.label = label;
			this.sprint = sprint;
			this.description = description;
			this.type = type;
			this.task_creator = task_creator;
			this.assignee = assignee;
		}
		
		
		//getters and setters
		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getPriority() {
			return priority;
		}

		public void setPriority(String priority) {
			this.priority = priority;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public String getResolution() {
			return resolution;
		}

		public void setResolution(String resolution) {
			this.resolution = resolution;
		}

		public String getLabel() {
			return label;
		}

		public void setLabel(String label) {
			this.label = label;
		}

		public String getSprint() {
			return sprint;
		}

		public void setSprint(String sprint) {
			this.sprint = sprint;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public String getType() {
			return type;
		}

		public void setType(String type) {
			this.type = type;
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

		public User getTask_creator() {
			return task_creator;
		}

		public void setTask_creator(User task_creator) {
			this.task_creator = task_creator;
		}

		public User getAssignee() {
			return assignee;
		}

		public void setAssignee(User assignee) {
			this.assignee = assignee;
		}

//		public Story getRelated_story() {
//			return related_story;
//		}
//
//		public void setRelated_story(Story related_story) {
//			this.related_story = related_story;
//		}
//		
		
		
		
	    

}
