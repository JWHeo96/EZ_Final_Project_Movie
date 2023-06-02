package com.movie.view;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String home(Model model) {
		// 메인 화면 (예시)
		// List<MoiveVO> bestMovieList = movieService.getBestMoveiList();
		// model.addAttribute("bestMovieList", bestMovieList);
		
		return "index";
	}
	
}
