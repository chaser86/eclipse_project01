package com.project01.ysm.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.project01.ysm.common.FileUtils;
import com.project01.ysm.dao.FileDao;

@Service("fileService")
public class FileServiceImpl implements FileService{

	@Resource(name="fileDao")
	private FileDao fileDao;
	@Resource(name="fileUtils")
	private FileUtils fileUtiles;
	
	@Override
	public void fileService(HttpServletRequest request) throws Exception {
		List<Map<String, Object>> list = fileUtiles.parseInsertFileInfo(request);
		for(Map<String, Object> fileMap : list) {
			fileDao.fileUpload(fileMap);
		}
	}

	
}
