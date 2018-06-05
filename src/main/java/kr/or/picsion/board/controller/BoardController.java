package kr.or.picsion.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.View;

import kr.or.picsion.board.service.BoardService;

@Controller
@RequestMapping("")
public class BoardController {

	@Autowired
	private View jsonview;

	@Autowired
	private BoardService boardService;
}
