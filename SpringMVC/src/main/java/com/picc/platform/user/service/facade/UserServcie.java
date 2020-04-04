package com.picc.platform.user.service.facade;

import java.util.List;

import com.picc.platform.common.schema.vo.Page;
import com.picc.platform.user.schema.model.User;
import com.picc.platform.user.schema.vo.UserVo;


public interface UserServcie {

	List<User> queryUser(UserVo userVo);
	Page findListByPage(Page page, UserVo userVo);
	void saveUser(User user);
	User findUserByPK(Integer id);
	void deletUserByPK(Integer id);
}
