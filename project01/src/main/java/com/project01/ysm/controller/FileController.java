package com.project01.ysm.controller;

import java.util.Iterator;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project01.ysm.service.FileService;

@Controller
public class FileController {
	
	@Resource(name="fileService")
	FileService fileService;
	
	@RequestMapping("/fileUploadForm")
	public String fileUploadForm() {
		
		return "/fileUpload";
	}
	
	@RequestMapping("/fileUpload")
	public String fileUpload(HttpServletRequest request) throws Exception {
		
		MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest)request;
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		MultipartFile multipartFile = null;
		while(iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());
			if(multipartFile != null) {
				System.out.println("-------------------------------");
				System.out.println("name: "+ multipartFile.getName());
				System.out.println("fileName: "+ multipartFile.getOriginalFilename());
				System.out.println("size: "+ multipartFile.getSize());
				System.out.println("-------------------------------");
			}
		}
		
		fileService.fileService(request);
		return "redirect:/";
	}
}
