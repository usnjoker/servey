package com.usnjoker.web;

import com.google.common.base.Strings;
import com.usnjoker.domain.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Locale;

/**
 * Created by coupang on 2014. 11. 14..
 */
@Controller
@RequestMapping("/servey")
public class ServeyController {
	private final Logger logger = LoggerFactory.getLogger(ServeyController.class);

	@Autowired
	private ServeyService serveyService;

	@Autowired
	private QuestionService	questionService;

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public void saveServey(Locale locale, Model model, Servey servey, @ModelAttribute("questionOrdering") Long questionOrdering, @ModelAttribute("navigateType") NavigateType navigateType)
		throws Exception {
		logger.debug("asdf");
		logger.debug("answer: {}", servey.getAnswer());
		logger.debug("servey: {}", servey);
	}



	@RequestMapping("/a1/index")
	public String indexA1(Locale locale, Model model) {
		model.addAttribute("promotion", "/images/cou10.jpg");
		return "result";
	}

	@RequestMapping("/a2/index")
	public String indexA2(Locale locale, Model model) {
		model.addAttribute("promotion", "/images/cou30.jpg");
		return "result";
	}

	@RequestMapping("/b1/index")
	public String indexB1(Locale locale, Model model, Servey servey) {
		model.addAttribute("promotion", "b1");
		model.addAttribute("nextLink", getLink("servey", "b1", 2L));
		model.addAttribute("servey", servey);
		return "index";
	}

	@RequestMapping("/b2/index")
	public String indexB2(Locale locale, Model model, Servey servey) {
		model.addAttribute("promotion", "b2");
		model.addAttribute("nextLink", getLink("servey", "b2", 2L));
		model.addAttribute("servey", servey);
		return "index";
	}

	@RequestMapping("/b1/{questionOrdering}")
	public String b1(Locale locale, Model model, Servey servey, @PathVariable("questionOrdering") Long questionOrdering, @ModelAttribute("questionSeq") String questionSeq)
		throws Exception {
		if (null == questionOrdering) questionOrdering = 0L;

		if (!Strings.isNullOrEmpty(questionSeq)) {
			servey.setQuestionId(Long.parseLong(questionSeq));
			servey.setQuestion(questionService.getQuestion(Long.parseLong(questionSeq)));
		}
		logger.debug("servey: {}", servey);

		if (null != servey.getAnswer()) {
			servey.setCreatedBy(servey.getName());
			servey.setCreatedAt(new Date());
//			serveyService.save(servey);
		}

		Servey prevServey = serveyService.getQuestion(servey.getName(), questionOrdering - 1);
		Servey currServey = serveyService.getQuestion(servey.getName(), questionOrdering);
		Servey nextServey = serveyService.getQuestion(servey.getName(), questionOrdering + 1);

		currServey.setName(servey.getName());
		currServey.setHp(servey.getHp());

		model.addAttribute("promotion", "b1");

		if (null != prevServey.getQuestion())
			model.addAttribute("prevLink", getLink("servey", "b1", questionOrdering - 1));
		else
			model.addAttribute("prevLink", "/servey/b1/index");
		if (null != nextServey.getQuestion())
			model.addAttribute("nextLink", getLink("servey", "b1", questionOrdering + 1));
		else
			model.addAttribute("completeLink", "/servey/c1/complete");

		model.addAttribute("servey", currServey);
		model.addAttribute("question", currServey.getQuestion());
		model.addAttribute("questionId", currServey.getQuestion().getId());
		model.addAttribute("questionOrdering", questionOrdering);

		return "servey";
	}

	@RequestMapping("/b2/{questionOrdering}")
	public String b2(Locale locale, Model model, Servey servey, @PathVariable("questionOrdering") Long questionOrdering, @ModelAttribute("questionSeq") String questionSeq)
		throws Exception {
		if (null == questionOrdering) questionOrdering = 0L;

		if (!Strings.isNullOrEmpty(questionSeq)) {
			servey.setQuestionId(Long.parseLong(questionSeq));
			servey.setQuestion(questionService.getQuestion(Long.parseLong(questionSeq)));
		}

		if (null != servey.getAnswer()) {
			servey.setCreatedBy(servey.getName());
			servey.setCreatedAt(new Date());
//			serveyService.save(servey);
		}

		Servey prevServey = serveyService.getQuestion(servey.getName(), questionOrdering - 1);
		Servey currServey = serveyService.getQuestion(servey.getName(), questionOrdering);
		Servey nextServey = serveyService.getQuestion(servey.getName(), questionOrdering + 1);

		currServey.setName(servey.getName());
		currServey.setHp(servey.getHp());

		model.addAttribute("promotion", "b2");

		if (null != prevServey.getQuestion())
			model.addAttribute("prevLink", getLink("servey", "b2", questionOrdering - 1));
		else
			model.addAttribute("prevLink", "/servey/b2/index");
		if (null != nextServey.getQuestion())
			model.addAttribute("nextLink", getLink("servey", "b2", questionOrdering + 1));
		else
			model.addAttribute("completeLink", "/servey/c2/complete");

		model.addAttribute("servey", currServey);
		model.addAttribute("question", currServey.getQuestion());
		model.addAttribute("questionId", currServey.getQuestion().getId());
		model.addAttribute("questionOrdering", questionOrdering);

		return "servey";
	}

	@RequestMapping("/c1/complete")
	public String completeB1(Locale locale, Model model) {
		model.addAttribute("promotion", "/images/cou10.jpg");
		return "result";
	}

	@RequestMapping("/c2/complete")
	public String completeB2(Locale locale, Model model) {
		model.addAttribute("promotion", "/images/cou30.jpg");
		return "result";
	}

	private String getLink(String prefix, String promotionName, Long questionOrdering) {
		return new StringBuilder("/").append(prefix).append("/").append(promotionName).append("/").append(questionOrdering).toString();
	}



}
