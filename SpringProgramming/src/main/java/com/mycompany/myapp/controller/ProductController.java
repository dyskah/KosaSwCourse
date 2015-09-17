package com.mycompany.myapp.controller;


import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mycompany.myapp.dto.Board;
import com.mycompany.myapp.dto.Product;
import com.mycompany.myapp.service.ProductService;

@Controller
public class ProductController {
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/product/list")
	public String list(@RequestParam(defaultValue="1") int pageNo, Model model){
		logger.info("list()");
		//페이징을 위한 변수선언
		int rowsPerPage = 10;
		int pagesPerGroup = 5;
				
		//전체 게시물수
		int totalProductNo = productService.getTotalProductNo();
				
		//전체 페이지수
		int totalPageNo = totalProductNo / rowsPerPage;
		if(totalProductNo%rowsPerPage!=0){totalPageNo++;}
				
		//전체 그룹수
		int totalGroupNo = totalPageNo/ pagesPerGroup;
		if(totalPageNo%pagesPerGroup!=1){totalGroupNo++;}
				
		//현재 그릅법호, 시작페이지 번호, 끝페이지 번호
		int groupNo = (pageNo-1)/pagesPerGroup + 1;
		int startPageNo = (groupNo-1)*pagesPerGroup +1;
		int endPageNo = startPageNo + pagesPerGroup-1;
		if(groupNo == totalGroupNo){endPageNo = totalPageNo;}
				
				
				
		//현재 페이지 게시물 리스트
		List<Product> list = productService.getPage(pageNo, rowsPerPage);
				
		//View로 넘길 데이터
		model.addAttribute("pagesPerGroup", pagesPerGroup);
		model.addAttribute("totalPageNo", totalPageNo);
		model.addAttribute("totalGroupNo", totalGroupNo);
		model.addAttribute("groupNo", groupNo);
		model.addAttribute("startPageNo", startPageNo);
		model.addAttribute("endPageNo", endPageNo);
		model.addAttribute("pageNo", pageNo);
		model.addAttribute("list",list);
		
		return "product/list";
	}
	@RequestMapping("/product/writeForm")
	public String writeForm(){
		logger.info("writeForm()");
	
		return "product/writeForm";
	}
	@RequestMapping("/product/updateForm")
	public String updateForm(int productNo, Model model){
		Product product= productService.getProduct(productNo);
		model.addAttribute("product",product);
		logger.info("updateForm()");
		return "product/updateForm";
	}
	

	@RequestMapping("/product/write")
	public String write(
			String name,
			int amount ,
			int price,
			String kind,
			String content,
			MultipartFile attach,
			HttpSession session){
		logger.info("write()");
		
		//파일 정보 얻기
		ServletContext application = session.getServletContext();
		String dirPath = application.getRealPath("/resources/uploadfiles");
		String originalFilename = attach.getOriginalFilename();
		String filesystemName = System.currentTimeMillis() + "-"+ originalFilename;
		String contentType = attach.getContentType();
		
		if(!attach.isEmpty()){
		//파일에 저장하기
			try {
				attach.transferTo(new File(dirPath + "/" + filesystemName));
			} catch (Exception e) {e.printStackTrace();}
		}
		
		
		//데이터 베이스에 게시물 정보저장
		Product product = new Product();
		product.setName(name);
		product.setAmount(amount);
		product.setPrice(price);
		product.setKind(kind);
		product.setContent(content);
		if(!attach.isEmpty()){
		product.setOriginalFileName(originalFilename);
		product.setFilesystemName(filesystemName);
		product.setContentType(contentType);
		}
		productService.add(product);
		
		return "redirect:/product/list";
	}
	@RequestMapping("/product/update")
	public String update(){
		logger.info("update()");
		return "redirect:/product/update";
	}
	@RequestMapping("/product/detail")
	public String detail(int productNo, Model model){
		Product product = productService.getProduct(productNo);
		model.addAttribute("product",product);
		return "product/detail";
	}
	
}
