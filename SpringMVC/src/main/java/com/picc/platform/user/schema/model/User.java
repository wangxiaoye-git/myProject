package com.picc.platform.user.schema.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
//创建的数据库表名称
@Table(name = "User")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class User {

  //关键字生成模式
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)//设置为自动递增
  @Column(name="id")
  public Integer id;

  @Column(name="username")
  public String userName;

  @Column(name="password")
  public String passWord;
  //省略了get和set方法
}
