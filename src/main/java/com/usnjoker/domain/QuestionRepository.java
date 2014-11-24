package com.usnjoker.domain;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by coupang on 2014. 11. 13..
 */
@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {

}
