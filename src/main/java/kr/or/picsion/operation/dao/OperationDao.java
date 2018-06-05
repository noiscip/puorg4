package kr.or.picsion.operation.dao;

import java.util.List;

import kr.or.picsion.operation.dto.Operation;

public interface OperationDao {

	public int insertOperation(Operation operation);
	public int updateOperation(Operation operation);
	public List<Operation> selectOperation(int userNo);
	

}
