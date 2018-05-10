package com.test.session;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;



public class MySession {
	public static SqlSession  creatSession() throws IOException{
		SqlSessionFactory sqlSessionF = new SqlSessionFactoryBuilder().build(Resources.getResourceAsReader("SqlMapConfig.xml"));
		SqlSession session = sqlSessionF.openSession();
		return session;
	}
}

