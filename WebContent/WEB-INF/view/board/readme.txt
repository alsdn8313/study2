-- 생성하실 정보 

vo  : com.study.board.vo : Board
DAO : com.study.board.dao : BoardDaoJDBC
      + getBoardList(Connection conn)
      + getBoard(Connection conn, int bo_no)
      + insertBoard(Connection conn, Board board)
      + updateBoard(Connection conn, Board board)
	   + getBoarCount(Connection conn)     
        
                            
Service : com.study.board.service : BoardServiceImpl
       + getBoardCount()
       + getBoardList()
       + getBoard(int bo_no)
       + registBoard(Board board)
       + modifyBoard(Board board)
       
WebContent 에 board 폴더 생성 
   boardList.jsp 파일 생성  <- 16일차 memberList.jsp 참고해서  

오후 2교시 글등록 완성해 주세요 
 - 등록폼 : 제목, 작성자, 비번, 이메일,  내용 
 - boardInsert.jsp 에서 board 에 사용자 IP 를 직접 입력              
       board.setBo_id( ????   );
   
 - 서비스, dao 완성~~
 
오후 3교시는 상세보기 및 업데이트는 같이 작업 

화요일 :  


--------------------------------------------------------------
1. 게시판 Dao 인터페이스 분리
		MyBatis 구현체 생성
			//    설정파일 및 매퍼파일 생성
		-- 테스트
		
		
2. 기존의 		
		
			
















     
       
 