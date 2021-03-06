package com.study.board.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.study.board.vo.Board;
import com.study.board.vo.BoardSearch;

public interface IBoardDao {

	int getBoardCount(Connection conn, BoardSearch boardSearch) throws SQLException;

	// 게시판 목록
	List<Board> getBoradList(Connection conn, BoardSearch boardSearch) throws SQLException;

	// 게시판 상세
	Board getBorad(Connection conn, int bo_no) throws SQLException;

	// 게시판 등록
	int insertBoard(Connection conn, Board board) throws SQLException;

	// 게시판 수정
	int updateBoard(Connection conn, Board board) throws SQLException;

}