package com.usnjoker.domain;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.Date;
import java.util.List;

/**
 * Created by coupang on 2014. 11. 13..
 */
@Service
public class ServeyService {

	@Autowired
	private ServeyRepository serveyRepository;

	@Autowired
	private QuestionRepository questionRepository;

	public Servey getQuestion(String createdBy, Long questionOrdering) {
		Servey servey = null;
		try {
			List<Servey> serveyList = serveyRepository.findByCreatedByAndQuestionId(createdBy, questionOrdering);
			if (serveyList.size() > 0)
				servey = serveyList.get(0);
		} catch (Exception e) {

		}

		if (null == servey) {
			servey = new Servey();
			servey.setQuestion(questionRepository.findOne(questionOrdering));
			servey.setDuration(new Date().getTime());
			return servey;
		}

		return servey;
	}

//	public void save(Servey servey) {
//		serveyRepository.save(servey);
//	}

}
