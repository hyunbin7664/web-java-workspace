package kr.co.jhta.mapper;

import java.util.List;

import kr.co.jhta.vo.Board;

public interface BoardMapper {

	void insertBoard(Board board);
	List<Board> getAllBoards();
	Board getBoardByNo(int no);
	
}
