package com.picc.platform.common.service;

import com.picc.platform.user.schema.model.User;

public interface SaaUserService {

	User checkLogin(String userName,String passWord);
}
