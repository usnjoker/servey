package com.usnjoker.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by coupang on 2014. 11. 13..
 */
@Repository
public interface ServeyRepository extends JpaRepository<Servey, Long> {
	public List<Servey> findByCreatedByAndQuestionId(String createdBy, Long questionId);
}
