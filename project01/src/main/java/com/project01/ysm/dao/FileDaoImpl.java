package com.project01.ysm.dao;

import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("fileDao")
public class FileDaoImpl implements FileDao{

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;	
	
	@Override
	public void fileUpload(Map<String, Object> map) {
		sqlSessionTemplate.insert("fileUpload", map);
	}

}
