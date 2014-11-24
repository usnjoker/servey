package com.usnjoker.domain;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * Created by coupang on 2014. 11. 12..
 */
@Entity
public class Question {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Enumerated(EnumType.STRING)
	@Column(length = 50, nullable = false)
	@NotNull
	private QuestionType type;

	@Column(nullable = false)
	private String question;

	@OneToMany(fetch = FetchType.EAGER, cascade = {CascadeType.ALL})
	@JoinColumn(name = "questionId")
	private List<ObjectiveItem> objectiveItemList;

	@Column(nullable = false)
	private int ordering;

	@Column(nullable = false)
	private boolean visible;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public QuestionType getType() {
		return type;
	}

	public void setType(QuestionType type) {
		this.type = type;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public List<ObjectiveItem> getObjectiveItemList() {
		return objectiveItemList;
	}

	public void setObjectiveItemList(List<ObjectiveItem> objectiveItemList) {
		this.objectiveItemList = objectiveItemList;
	}

	public int getOrdering() {
		return ordering;
	}

	public void setOrdering(int ordering) {
		this.ordering = ordering;
	}

	public boolean isVisible() {
		return visible;
	}

	public void setVisible(boolean visible) {
		this.visible = visible;
	}
}
