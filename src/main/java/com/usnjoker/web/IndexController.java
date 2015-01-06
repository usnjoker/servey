package com.usnjoker.web;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import com.usnjoker.domain.Question;
import com.usnjoker.domain.Servey;
import com.usnjoker.domain.ServeyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by coupang on 2014. 11. 12..
 */

@Controller
@Transactional(readOnly = true)
public class IndexController {
	private final Logger logger = LoggerFactory.getLogger(IndexController.class);

	@Autowired
	private ServeyService serveyService;

	@ResponseStatus(value = HttpStatus.NOT_FOUND, reason = "잘못된 접근입니다.")
	public class UrlNotFoundException extends RuntimeException {
	}





}
