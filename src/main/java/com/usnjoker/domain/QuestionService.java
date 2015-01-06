package com.usnjoker.domain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by coupang on 2014. 11. 13..
 */
@Service
@Transactional(readOnly = true)
public class QuestionService {

	@Autowired
	private QuestionRepository repository;

	public Question getQuestion(Long id) {
		return repository.findOne(id);
	}

}
