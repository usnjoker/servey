package com.usnjoker.domain;

import org.springframework.boot.orm.jpa.EntityScan;
import org.springframework.data.annotation.CreatedDate;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by coupang on 2014. 11. 12..
 */
@Entity
public class Servey implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String name;

	@Column
	private String hp;

	@Column
	private Long questionId;

	@ManyToOne(targetEntity = Question.class, fetch = FetchType.EAGER, optional = false)
	@JoinColumn(name = "questionId", insertable = false, updatable = false)
	private Question question;

	@Column(nullable = false)
	private String answer;

	@Column(nullable = false)
	private Long duration;

	@CreatedDate
	@Column(updatable = false)
	private Date createdAt;

	@Column(length = 50, updatable = false)
	private String createdBy;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp() {
		return hp;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public Long getQuestionId() {
		return questionId;
	}

	public void setQuestionId(Long questionId) {
		this.questionId = questionId;
	}

	public Question getQuestion() {
		return question;
	}

	public void setQuestion(Question question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}

	public Long getDuration() {
		return duration;
	}

	public void setDuration(Long duration) {
		this.duration = duration;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

}
