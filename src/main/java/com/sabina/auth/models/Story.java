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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="stories")
public class Story {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
	
	private String type;
	private String title;
	 private String priority;
	 private String label;
	 private String status;
	 private String resolution;
	 private String description;
	 private String acceptanceCriteria;
	 
	
	@Column(updatable=false)
    private Date createdAt;
    private Date updatedAt;
    
    /*=====================================
	 * MANY TO ONE RELATIONSHIP
	 * ====================================
	 */
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="assignee_id")
	private User assignee;
	
	/*=====================================
	 * MANY TO ONE RELATIONSHIP
	 * ====================================
	 */
    @ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="user_id")
    private User story_creator;
    
//    /*=====================================
//     * ONE TO MANY RELATIONSHIP WITH TASKS
//     * ====================================
//     */
//    @OneToMany(mappedBy="task_id",fetch=FetchType.LAZY)
//    private List<Task> tasks;
//    
    //constructors
    
    public Story() {}

	public Story(String type, String title, String priority, String label, String status, String resolution,
			String description, String acceptanceCriteria, User assignee, User story_creator) {
		super();
		this.type = type;
		this.title = title;
		this.priority = priority;
		this.label = label;
		this.status = status;
		this.resolution = resolution;
		this.description = description;
		this.acceptanceCriteria = acceptanceCriteria;
		this.assignee = assignee;
		this.story_creator = story_creator;
	}
	
	//getters and setters

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
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

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAcceptanceCriteria() {
		return acceptanceCriteria;
	}

	public void setAcceptanceCriteria(String acceptanceCriteria) {
		this.acceptanceCriteria = acceptanceCriteria;
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

	public User getAssignee() {
		return assignee;
	}

	public void setAssignee(User assignee) {
		this.assignee = assignee;
	}

//	public List<Task> getTasks() {
//		return tasks;
//	}
//
//	public void setTasks(List<Task> tasks) {
//		this.tasks = tasks;
//	}

	public User getStory_creator() {
		return story_creator;
	}

	public void setStory_creator(User story_creator) {
		this.story_creator = story_creator;
	}
	
	
    
    

}
