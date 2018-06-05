package kr.or.picsion.blame.dao;

import java.util.List;

import kr.or.picsion.blame.dto.Blame;

public interface BlameDao {

	public int insertBlame(Blame blame);
	public List<Blame> blameList();
	public Blame selectBlame(int blameNo);
	
}
