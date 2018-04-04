package com.study.board.web;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.servlet.IController;

public class BoardInsertController implements IController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
			
		Board board = new Board();
		
		try {
			BeanUtils.populate(board, request.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		board.setBo_ip(request.getRemoteAddr());
		BoardServiceImpl boardService = new BoardServiceImpl();
		int cnt = boardService.registBoard(board);
		
		if(cnt >0) {
			request.setAttribute("message", "게시판 등록을 완료했습니다.");
		}else {
			request.setAttribute("message", "게시판 등록에 실패했습니다.");
		}
		request.setAttribute("board", board);  // 글 번호를 담아줌
		
		return "/WEB-INF/view/board/boardInsert.jsp";
		
		/*BoardServiceImpl boardService = new BoardServiceImpl();
		
		Board board = new Board();
		
		board.setBo_title(request.getParameter("bo_title"));
		board.setBo_writer(request.getParameter("bo_writer"));
		board.setBo_passwd(request.getParameter("bo_passwd"));
		board.setBo_email(request.getParameter("bo_email"));
		board.setBo_content(request.getParameter("bo_content"));
		
		int cnt = boardService.registBoard(board);
		if(cnt >0) {
			request.setAttribute("message", "게시판 등록을 완료했습니다.");
		}else {
			request.setAttribute("message", "게시판 등록에 실패했습니다.");
		}

		return "/WEB-INF/view/board/boardInsert.jsp";*/
	}
}
