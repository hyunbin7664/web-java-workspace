package kr.co.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.book.util.ConnectionUtil;
import kr.co.book.vo.Book;

public class BookDao {
	
	/**
	 * 변경된 책정보를 전달받아서 반영시킨다.
	 * @param book 변경된 책정보
	 * @throws SQLException
	 */
	public void updateBook(Book book) throws SQLException {
		String sql = """
				update tb_books
				set
					book_title = ?
					, book_author = ?
					, book_publisher = ?
					, book_price = ?
					, book_stock = ?
					, book_pub_date = ?
					, book_summary = ?
					, book_updated_date = sysdate
				where book_no = ?
				""";
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, book.getTitle());
		pstmt.setString(2, book.getAuthor());
		pstmt.setString(3, book.getPublisher());
		pstmt.setInt(4, book.getPrice());
		pstmt.setInt(5, book.getStock());
		pstmt.setString(6, book.getPubDate());
		pstmt.setString(7, book.getSummary());
		pstmt.setInt(8, book.getNo());
		
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
	}
	
	/**
	 * 책번호를 전달받고 해당 책정보를 삭제한다.
	 * @param no 삭제할 책번호
	 * @throws SQLException
	 */
	public void deleteBookByNo(int no) throws SQLException {
		String sql = """
				delete from tb_books
				where book_no = ?
				""";
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		
		pstmt.executeQuery();
		
		pstmt.close();
		con.close();
	}
	
	/**
	 * 책번호를 전달받고 해당 책정보를 반환한다.
	 * @param no 조회할 책번호
	 * @return 책정보
	 */
	public Book getBookByNo(int no) throws SQLException {
		String sql = """
				select *
				from tb_books
				where book_no = ?
				""";
		
		Book book = null;
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setInt(1, no);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			book = new Book();
			book.setNo(rs.getInt("book_no"));
			book.setTitle(rs.getString("book_title"));
			book.setAuthor(rs.getString("book_author"));
			book.setPublisher(rs.getString("book_publisher"));
			book.setPrice(rs.getInt("book_price"));
			book.setStock(rs.getInt("book_stock"));
			book.setPubDate(rs.getString("book_pub_date"));
			book.setSummary(rs.getString("book_summary"));
			book.setCreatedDate(rs.getDate("book_created_date"));
			book.setUpdatedDate(rs.getDate("book_updated_date"));
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		return book;
	}
	
	/**
	 * 신규 도서정보를 전달받아서 테이블에 저장시킨다.
	 * @param book 신규 도서정보
	 * @throws SQLException
	 */
	public void insertBook(Book book) throws SQLException {
		String sql = """
				insert into tb_books
				(book_no, book_title, book_author, book_publisher, 
				book_price, book_summary, book_pub_date)
				values
				(books_seq.nextval, ?, ?, ?, ?, ?, ?)
				""";
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, book.getTitle());
		pstmt.setString(2, book.getAuthor());
		pstmt.setString(3, book.getPublisher());
		pstmt.setInt(4, book.getPrice());
		pstmt.setString(5, book.getSummary());
		pstmt.setString(6, book.getPubDate());
		
		pstmt.executeUpdate();
		
		pstmt.close();
		con.close();
		
	}

	
	/**
	 * 모든 도서목록정보를 조회해서 반환한다.
	 * @return 도서목록정보
	 * @throws SQLException 예외발생시
	 */
	public List<Book> getBooks(int offset, int rows) throws SQLException {
		String sql = """
				select *
				from tb_books
				order by book_no desc
				offset ? rows
				fetch next ? rows only
				""";
		
		List<Book> books = new ArrayList<Book>();
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, offset);
		pstmt.setInt(2, rows);
		ResultSet rs = pstmt.executeQuery();
		while (rs.next()) {
			Book book = new Book();
			book.setNo(rs.getInt("book_no"));
			book.setTitle(rs.getString("book_title"));
			book.setAuthor(rs.getString("book_author"));
			book.setPublisher(rs.getString("book_publisher"));
			book.setPrice(rs.getInt("book_price"));
			book.setStock(rs.getInt("book_stock"));
			
			books.add(book);
		}
		rs.close();
		pstmt.close();
		con.close();
		
		return books;
	}
	
	/**
	 * 총 책정보 개수를 반환한다.
	 * @return 총 책정보 개수
	 * @throws SQLException
	 */
	public int getTotalRows() throws SQLException {
		String sql = """
				select count(*) cnt
				from tb_books
				""";
		int totalRows = 0;
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		if (rs.next()) {
			totalRows = rs.getInt("cnt");
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		return totalRows;
		
	}
}
