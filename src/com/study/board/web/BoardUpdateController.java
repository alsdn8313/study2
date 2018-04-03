package com.study.board.web;

import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.study.board.service.BoardServiceImpl;
import com.study.board.vo.Board;
import com.study.board.vo.BoardSearch;
import com.study.servlet.IController;

public class BoardUpdateController implements IController {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws ServletException {
		
			
		//String bo_no = request.getParameter("bo_no");
		//int bo_no = Integer.parseInt(no);
		BoardServiceImpl boardService = new BoardServiceImpl();
		//Board board = boardService.getBoard(Integer.parseInt(bo_no));
		//request.setAttribute("board", board);
	
		Board board = new Board();
		board.setBo_no(Integer.parseInt(request.getParameter("bo_no")));
		board.setBo_title(request.getParameter("bo_title"));
		board.setBo_writer(request.getParameter("bo_writer"));
		board.setBo_passwd(request.getParameter("bo_passwd"));
		board.setBo_email(request.getParameter("bo_email"));
		board.setBo_content(request.getParameter("bo_content"));
		
		int cnt = boardService.modifyBoard(board);
		if(cnt >0) {
			request.setAttribute("message", "게시판 수정을 완료했습니다.");
		}else {
			request.setAttribute("message", "게시판 수정에 실패했습니다.");
		}

		return "/WEB-INF/view/board/boardUpdate.jsp";
	}
}
