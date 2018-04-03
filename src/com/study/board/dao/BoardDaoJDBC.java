package com.study.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.study.board.vo.Board;
import com.study.board.vo.BoardSearch;

public class BoardDaoJDBC implements IBoardDao {
	
	@Override
	public int getBoardCount(Connection conn, BoardSearch boardSearch) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT count(*) FROM tb_board ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
		} finally {
			if(rs != null) try{rs.close();}catch(Exception e){}
			if(pstmt != null) try{pstmt.close();}catch(Exception e){}
		}
	}
	
	
	
	// 게시판 목록
	@Override
	public List<Board> getBoradList(Connection conn, BoardSearch boardSearch) throws SQLException{
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		List<Board> list = new ArrayList<>();
		StringBuilder sb = new StringBuilder();
		
		sb.append("SELECT *         ");
		sb.append("  FROM ( SELECT rownum rn, a.*  ");
		sb.append("           FROM (               ");
		
		sb.append("SELECT             ");
		sb.append("       bo_no       ");
		sb.append("     , bo_title    ");
		sb.append("     , bo_writer   ");
		sb.append("     , bo_passwd   ");
		sb.append("     , bo_email    ");
		sb.append("     , bo_content  ");
		sb.append("     , bo_ip       ");
		sb.append("     , bo_read_cnt ");
		sb.append("     , TO_CHAR(bo_reg_date, 'YYYY-MM-DD') AS bo_reg_date ");
		sb.append("     , TO_CHAR(bo_mod_date, 'YYYY-MM-DD') AS bo_mod_date ");
		sb.append("  FROM tb_board    ");
		sb.append("  ORDER BY bo_no DESC ");
		
		sb.append("              ) a ");
		sb.append("        ) b       ");
		sb.append(" WHERE rn between ? and ? ");
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, boardSearch.getStartRow());
			pstmt.setInt(2, boardSearch.getEndRow());
			
			rs = pstmt.executeQuery();
			Board board = null;
			while (rs.next()) {
				board = new Board();
				board.setBo_no(rs.getInt("bo_no"));
				board.setBo_title(rs.getString("bo_title"));
				board.setBo_writer(rs.getString("bo_writer"));
				board.setBo_passwd(rs.getString("bo_passwd"));
				board.setBo_email(rs.getString("bo_email"));
				board.setBo_content(rs.getString("bo_content"));
				board.setBo_ip(rs.getString("bo_ip"));
				board.setBo_read_cnt(rs.getInt("bo_read_cnt"));
				board.setBo_reg_date(rs.getString("bo_reg_date"));
				board.setBo_mod_date(rs.getString("bo_mod_date"));
				list.add(board); 
			}
			return list;
		} finally {
			if(rs != null) try{rs.close();}catch(Exception e){}
			if(pstmt != null) try{pstmt.close();}catch(Exception e){}
		}
		
	}
	
	// 게시판 상세
	@Override
	public Board getBorad(Connection conn,int bo_no) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sb = new StringBuilder();		
		sb.append("SELECT             ");
		sb.append("       bo_no       ");
		sb.append("     , bo_title    ");
		sb.append("     , bo_writer   ");
		sb.append("     , bo_passwd   ");
		sb.append("     , bo_email    ");
		sb.append("     , bo_content  ");
		sb.append("     , bo_ip       ");
		sb.append("     , bo_read_cnt ");
		sb.append("     , TO_CHAR(bo_reg_date, 'YYYY-MM-DD') AS bo_reg_date ");
		sb.append("     , TO_CHAR(bo_mod_date, 'YYYY-MM-DD') AS bo_mod_date ");
		sb.append("  FROM tb_board ");
		sb.append("  WHERE bo_no = ? ");
		
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bo_no);
			rs = pstmt.executeQuery();
			Board board = null;
			if (rs.next()) {
				board = new Board();
				board.setBo_no(rs.getInt("bo_no"));
				board.setBo_title(rs.getString("bo_title"));
				board.setBo_writer(rs.getString("bo_writer"));
				board.setBo_passwd(rs.getString("bo_passwd"));
				board.setBo_email(rs.getString("bo_email"));
				board.setBo_content(rs.getString("bo_content"));
				board.setBo_ip(rs.getString("bo_ip"));
				board.setBo_read_cnt(rs.getInt("bo_read_cnt"));
				board.setBo_reg_date(rs.getString("bo_reg_date"));
				board.setBo_mod_date(rs.getString("bo_mod_date"));
			}
			return board;
		} finally {
			if(rs != null) try{rs.close();}catch(Exception e){}
			if(pstmt != null) try{pstmt.close();}catch(Exception e){}
		}
		
	}
	
	
	// 게시판 등록
	@Override
	public int insertBoard(Connection conn, Board board) throws SQLException {
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sb = new StringBuilder();
		  sb.append(" INSERT INTO tb_board ");
		  sb.append("     ( bo_no          ");
		  sb.append("	 , bo_title       ");
		  sb.append("	 , bo_writer      ");
		  sb.append("	 , bo_passwd      ");
		  sb.append("	 , bo_email       ");
		  sb.append("	 , bo_content     ");
		  sb.append("	 , bo_ip          ");
		  sb.append("	 , bo_read_cnt    ");
		  sb.append("	 , bo_reg_date    ");
		  sb.append("	 , bo_mod_date )    ");
		  sb.append(" VALUES ( seq_board.nextval, ?, ?, ?, ?, ?, ?, 0, SYSDATE, SYSDATE) ");
		
			
	     try {
			pstmt = conn.prepareStatement(sb.toString()); 
			int idx = 1;
			pstmt.setString(idx++, board.getBo_title());
			pstmt.setString(idx++, board.getBo_writer());
			pstmt.setString(idx++, board.getBo_passwd());
			pstmt.setString(idx++, board.getBo_email());
			pstmt.setString(idx++, board.getBo_content());
			pstmt.setString(idx++, board.getBo_ip());
			
			int cnt = pstmt.executeUpdate();
			return cnt;
		} finally {
			if(rs != null) try {rs.close();}catch(Exception e) {}
			if(pstmt != null) try{pstmt.close();}catch(Exception e){}	
		}
		
	}
		

	// 게시판 수정
	@Override
	public int updateBoard(Connection conn, Board board) throws SQLException {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		StringBuilder sb = new StringBuilder();
		
		sb.append( "UPDATE tb_board SET ");
		sb.append( "    bo_title = ?  ");
		sb.append( "     , bo_writer = ? ");
		sb.append( "     , bo_passwd = ? ");
		sb.append( "     , bo_email = ? ");
		sb.append( "     , bo_content = ? ");
		sb.append( "     , bo_ip = ? ");
		sb.append( "     , bo_read_cnt = ? ");
		sb.append( " WHERE bo_no  = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1,  board.getBo_title());
			pstmt.setString(2,  board.getBo_writer());
			pstmt.setString(3,  board.getBo_passwd());
			pstmt.setString(4,  board.getBo_email());
			pstmt.setString(5,  board.getBo_content());
			pstmt.setString(6,  board.getBo_ip());
			pstmt.setInt(7,  board.getBo_read_cnt());
			pstmt.setInt(8,  board.getBo_no());
			
			int cnt = pstmt.executeUpdate();
			return cnt;
		} finally {
			if(rs != null) try{rs.close();}catch(Exception e){}
			if(pstmt != null) try{pstmt.close();}catch(Exception e){}	
		}
		
	}
			
}
