package kr.board.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.board.entity.AttachFileVO;
import kr.board.entity.Board;
import net.coobird.thumbnailator.Thumbnailator;

@Controller
public class UploadController {
	private static final Logger logger = 
			LoggerFactory.getLogger(UploadController.class);
	
	//<input type="file" name="uploadFile" multiple />
	//MultipartFile : 스프링 프레임워크에서 제공하는 타입
	@PostMapping("uploadFormAction")
	//public String uploadFormPost(MultipartFile[] uploadFile, Model model, HttpServletRequest request, RedirectAttributes redirectAttributes) {
	public String uploadFormPost(MultipartFile[] uploadFile, Model model, HttpServletRequest request) {
		System.out.println("[uploadFormAction]");
		
		// (1)파일 저장할 위치 설정
		// String uploadFolder = "D:\\A_TeachingMaterial\\6.JspSpring\\workspace\\springProj2\\src\\main\\webapp\\resources\\upload";
		
		String path = request.getRealPath("/");
        System.out.println("현재 작업 경로: " + path);
        String serverUrl =  request.getRequestURL().toString().replace(request.getServletPath(),"");
        System.out.println("서버url : " + serverUrl);
        
        
        ///////// 설치 컴퓨터에 맡게 upload 저장소 설정 해야함. ///////////
		// String uploadFolder = "C:\\eGovFrame-3.10.0\\workspace.edu\\MVC03-1\\src\\main\\webapp\\resources\\upload";
        String uploadFolder = "C:\\Users\\user\\git\\vp112\\src\\main\\webapp\\resources\\upload";

	
		List<String> list = new ArrayList<String>();
		
		for(MultipartFile multipartFile : uploadFile) {
			
			// uuid 생성 
	        UUID uuid = UUID.randomUUID();
	        //savedName 변수에 uuid + 원래 이름 추가
	        String savedName = uuid.toString()+"_"+multipartFile.getOriginalFilename();
	        //uploadPath경로의 savedName 파일에 대한 file 객체 생성
	        
			logger.info("-----------");
			logger.info("파일명 : " + savedName);
			logger.info("파일크기 : " + multipartFile.getSize());
			
			// uploadFolder\\gongu03.jpg으로 조립
			// 이렇게 업로드 하겠다라고 설계
			File saveFile = new File(uploadFolder, savedName);
			
			String fullSaveName = uploadFolder+"\\"+savedName;
			System.out.println(fullSaveName);
			
			try {
				//파일 실제 명을 list에 담음
				list.add(fullSaveName);
				//transferTo() : 물리적으로 파일 업로드가 됨
				multipartFile.transferTo(saveFile);
			}catch(Exception e) {
				logger.info(e.getMessage());
			}//end catch
		}//end for
		
		//list : 파일명들이 들어있음
		
		model.addAttribute("list", list);
		System.out.println("넘길값 : " + list.get(0).toString());
	
		// 파이썬플라스크 포트에 맞춰서 설정
		return "redirect:http://localhost:9900";
	}
	
}
