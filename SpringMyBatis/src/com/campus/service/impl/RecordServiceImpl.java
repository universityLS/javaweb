package com.campus.service.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.campus.dao.RecordMapper;
import com.campus.entity.Record;
import com.campus.service.RecordService;

/** 
* @author 庄铭南 
* E-mail: 978624366@qq.com
* @version 创建时间：2017年6月11日 下午3:51:22 
* 用户操作接口 
*/
@Service
public class RecordServiceImpl implements RecordService{

	@Override
	public List<Record> getAllByStartAndEnd(Date startDate, Date endDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getLostByStartAndEnd(Date startDate, Date endDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getFoundByStartAndEnd(Date startDate, Date endDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getAllPagination(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getLostPagination(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getFoundPagination(int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getAllRecord() {
		// TODO 时间降序还没做
		List<Record> recordList = recordMapper.getAllThingsMess();
		return recordList;
	}

	@Override
	public List<Record> getLostRecord() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getFoundRecord() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getAllByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getLostByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getFoundByKeyword(String keyword) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getAllByCatetoryId(int catetory_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getLostByCatetoryId(int catetory_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getFoundByCatetoryId(int catetory_id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getAllByCatetoryIdAndStartEnd(int catetory_id, Date start, Date end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getLostByCatetoryIdAndStartEnd(int catetory_id, Date start, Date end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getFoundByCatetoryIdAndStartEnd(int catetory_id, Date start, Date end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getAllByKeywordAndStartEnd(String keyword, Date start, Date end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getLostByKeywordAndStartEnd(String keyword, Date start, Date end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Record> getFoundByKeywordAndStartEnd(String keyword, Date start, Date end) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int addNewRecord(Record record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyRecordById(Record record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRecordById(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	@Autowired
	private RecordMapper recordMapper;
}
 