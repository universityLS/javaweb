package com.campus.service;

import com.campus.entity.User;

/** 
* @author 庄铭南 
* E-mail: 978624366@qq.com
* @version 创建时间：2017年6月11日 下午3:51:22 
* 用户操作接口 
*/
public interface UserService {
	/**
	 * 用户注册
	 * 密码加密存储，在util工具类中调用加密算法
	 * @param user
	 * @return User
	 * 成功返回1，失败返回0
	 */
	public int register(User user);
	
	/**
	 * 用户登录
	 * 通过账户密码登录，登录成功返回User实例对象，登录失败返回null
	 * @param account
	 * @param password
	 * @return User
	 */
	public User login(String account, String password);
	
	/**
	 * 更新用户所有字段信息
	 * 通过User对象更新user用户，检测传入参数user对象的account不为空并且不等于""、且在数据表中存在该用户后方可修改
	 * @param user
	 * @return int
	 * 成功返回1，失败返回0
	 */
	public int modifyUser(User user);
	
	/**
	 * 修改用户密码
	 * 检测传入参数user对象的account不为空并且不等于""、且在数据表中存在，oldPwd与该用户原来密码相同之后方可修改
	 * @param account
	 * @param oldPwd
	 * @param newPwd
	 * @return int
	 * 成功返回1，失败返回0
	 */
	public int modifyUserPassword(String account, String oldPwd, String newPwd);
	
	/**
	 * 修改用户头像
	 * @param account
	 * @param head_img_path
	 * @return int
	 * 成功返回1，失败返回0
	 */
	public int modifyUserHeadImgPath(String account, String head_img_path);
	
	/**
	 * 通过账号删除用户
	 * @param account
	 * @return int
	 * 成功返回1，失败返回0
	 */
	public int deleteUserByAccount(String account);
	
	
}
 