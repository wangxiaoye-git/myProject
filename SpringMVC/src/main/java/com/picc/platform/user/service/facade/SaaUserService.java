package com.picc.platform.user.service.facade;

import com.picc.platform.user.schema.model.User;

public interface SaaUserService {

	User checkLogin(String userName,String passWord);
}
