package kr.co.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.board.util.ConnectionUtil;
import kr.co.board.vo.Board;

public class BoardDao {

	/**
	 * 게시글 정보 조회
	 * 
	 * @param no 게시글 번호
	 * @return
	 * @throws SQLException
	 */
	public Board getBoardByNo(int no) throws SQLException {
		String sql = """
				select *
				from tb_boards
				where board_no = ?
				""";

		Board board = null;

		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			board = new Board();
			board.setNo(rs.getInt("board_no"));
			board.setTitle(rs.getString("board_title"));
			board.setWriter(rs.getString("board_writer"));
			board.setView_cnt(rs.getInt("board_view_cnt"));
			board.setDeleted(rs.getString("board_deleted"));
			board.setContent(rs.getString("board_content"));
			board.setCreated_date(rs.getDate("board_created_date"));
			board.setUpdated_date(rs.getDate("board_updated_date"));
		}

		rs.close();
		pstmt.close();
		con.close();

		return board;
	}

	/**
	 * 게시글 목록 전체 조회
	 * 
	 * @return
	 * @throws SQLException
	 */
	public List<Board> getBoards() throws SQLException {
		String sql = """
				select *
				from tb_boards
				order by board_no desc
				""";

		List<Board> boards = new ArrayList<Board>();

		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			if ("N".equals(rs.getString("board_deleted"))) {
				Board board = new Board();
				board.setNo(rs.getInt("board_no"));
				board.setTitle(rs.getString("board_title"));
				board.setWriter(rs.getString("board_writer"));
				board.setView_cnt(rs.getInt("board_view_cnt"));
				board.setDeleted(rs.getString("board_deleted"));
				board.setContent(rs.getString("board_content"));
				board.setCreated_date(rs.getDate("board_created_date"));
				board.setUpdated_date(rs.getDate("board_updated_date"));

				boards.add(board);
			}
		}

		rs.close();
		pstmt.close();
		con.close();

		return boards;
	}

	public void insertBoard(Board board) throws SQLException {
		String sql = """
				insert into tb_boards
				(BOARD_NO, BOARD_TITLE, BOARD_WRITER, BOARD_CONTENT)
				VALUES
				(BOARDS_SEQ.NEXTVAL, ?, ?, ?)
				""";
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, board.getTitle());
		pstmt.setString(2, board.getWriter());
		pstmt.setString(3, board.getContent());

		pstmt.executeUpdate(); // 제발 이거 까먹지말기

		pstmt.close();
		con.close();
	}

	public void deleteBoardByNo(int no) throws SQLException {
		String sql = """
				update tb_boards
				set
				board_deleted = 'Y'
				where board_no = ?
				""";

		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);

		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}

	public void updateBoardByNo(Board board) throws SQLException {
		String sql = """
				update tb_boards
				set
				board_title = ?,
				board_writer = ?,
				board_content = ?
				where board_no = ?
				""";

		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, board.getTitle());
		pstmt.setString(2, board.getWriter());
		pstmt.setString(3, board.getContent());
		pstmt.setInt(4, board.getNo());

		pstmt.executeUpdate();

		pstmt.close();
		con.close();

	}
	
	public void updateViewCnt(Board board) throws SQLException {
		String sql = """
				update tb_boards
				set
				board_view_cnt = ?
				where board_no = ?
				""";

		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, board.getView_cnt() + 1);
		pstmt.setInt(2, board.getNo());

		pstmt.executeUpdate();

		pstmt.close();
		con.close();
	}
}
