package com.picc.platform.organiz.service.spring;

import org.springframework.stereotype.Service;

import com.picc.platform.common.spring.IBaseDaoServiceSpringImpl;
import com.picc.platform.organiz.schema.model.Organization;
import com.picc.platform.organiz.service.facade.OrganizService;

@Service(value="organizService")
public class OrganizServiceSpringImpl extends IBaseDaoServiceSpringImpl<Organization,String> implements OrganizService {


}
