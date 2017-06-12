package com.campus.service;

import java.util.Date;
import java.util.List;

import com.campus.entity.Record;

/** 
* @author 庄铭南 
* E-mail: 978624366@qq.com
* @version 创建时间：2017年6月11日 下午3:51:22 
* 用户操作接口 
*/
public interface RecordService {
	
	/**
	 * 获取指定开始日期、结束日期的所有物品记录,按时间降序排序
	 * @param startDate
	 * @param endDate
	 * @return List<Record>
	 */
	public List<Record> getAllByStartAndEnd(Date startDate, Date endDate);
	
	/**
	 * 获取指定开始日期、结束日期的所有丢失物品记录,按时间降序排序
	 * @param startDate
	 * @param endDate
	 * @return
	 */
	public List<Record> getLostByStartAndEnd(Date startDate, Date endDate);
	
	/**
	 * 获取指定开始日期、结束日期的所有拾获物品记录,按时间降序排序
	 * @param startDate
	 * @param endDate
	 * @return
	 */
	public List<Record> getFoundByStartAndEnd(Date startDate, Date endDate);
	
	/**
	 * 获取指定页面大小，第几页的所有物品记录，按时间降序排序/分页采用pageHelper插件实现
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public List<Record> getAllPagination(int pageNum, int pageSize);
	
	/**
	 * 获取指定页面大小，第几页的所有丢失物品记录，按时间降序排序/分页采用pageHelper插件实现
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public List<Record> getLostPagination(int pageNum, int pageSize);
	
	/**
	 * 获取指定页面大小，第几页的所有拾获物品记录，按时间降序排序/分页采用pageHelper插件实现
	 * @param pageNum
	 * @param pageSize
	 * @return
	 */
	public List<Record> getFoundPagination(int pageNum, int pageSize);
	
	/**
	 * 获得所有物品记录，按时间降序排序
	 * @return
	 */
	public List<Record> getAllRecord();
	
	/**
	 * 获得所有丢失物品记录，按时间降序排序
	 * @return
	 */
	public List<Record> getLostRecord();
	
	/**
	 * 获得所有拾获物品记录，按时间降序排序
	 * @return
	 */
	public List<Record> getFoundRecord();
	
	/**
	 * 通过关键词获取所有物品记录，按时间降序排序
	 * @param keyword
	 * @return
	 */
	public List<Record> getAllByKeyword(String keyword);
	
	/**
	 * 通过关键词获取所有丢失物品记录，按时间降序排序
	 * @param keyword
	 * @return
	 */
	public List<Record> getLostByKeyword(String keyword);
	
	/**
	 * 通过关键词获取所有拾获物品记录，按时间降序排序
	 * @param keyword
	 * @return
	 */
	public List<Record> getFoundByKeyword(String keyword);
	
	/**
	 * 通过物品分类id来查询所有物品记录，按时间降序排序
	 * @param catetory_id
	 * @return
	 */
	public List<Record> getAllByCatetoryId(int catetory_id);
	
	/**
	 * 通过物品分类id来查询所有物品记录，按时间降序排序
	 * @param catetory_id
	 * @return
	 */
	public List<Record> getLostByCatetoryId(int catetory_id);
	
	/**
	 * 通过物品分类id来查询所有物品记录，按时间降序排序
	 * @param catetory_id
	 * @return
	 */
	public List<Record> getFoundByCatetoryId(int catetory_id);
	
	/**
	 * 通过开始时间、结束时间、目录id查询所有物品记录
	 * @param catetory_id
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Record> getAllByCatetoryIdAndStartEnd(int catetory_id, Date start, Date end);
	
	/**
	 * 通过开始时间、结束时间、目录id查询所有遗失物品记录
	 * @param catetory_id
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Record> getLostByCatetoryIdAndStartEnd(int catetory_id, Date start, Date end);
	
	/**
	 * 通过开始时间、结束时间、目录id查询所有拾获物品记录
	 * @param catetory_id
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Record> getFoundByCatetoryIdAndStartEnd(int catetory_id, Date start, Date end);
	
	/**
	 * 通过关键字、开始时间、结束时间查询所有物品记录
	 * @param catetory_id
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Record> getAllByKeywordAndStartEnd(String keyword, Date start, Date end);
	
	/**
	 * 通过关键字、开始时间、结束时间查询所有遗失物品记录
	 * @param catetory_id
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Record> getLostByKeywordAndStartEnd(String keyword, Date start, Date end);
	
	/**
	 * 通过关键字、开始时间、结束时间查询所有拾获物品记录
	 * @param catetory_id
	 * @param start
	 * @param end
	 * @return
	 */
	public List<Record> getFoundByKeywordAndStartEnd(String keyword, Date start, Date end);
	
	/**
	 * 新增物品记录
	 * @param record
	 * @return
	 */
	public int addNewRecord(Record record);
	
	/**
	 * 通过记录id来修改物品记录
	 * @param record
	 * @return
	 */
	public int modifyRecordById(Record record);
	
	/**
	 * 通过记录id来删除物品记录
	 * @param id
	 * @return
	 */
	public int deleteRecordById(String id);
	
	
}
 