package com.olive.attachment.view;

import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.UUID;

import javax.print.DocFlavor.URL;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.junit.runner.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.olive.attachment.service.AttachmentService;
import com.olive.attachment.service.AttachmentVO;
import com.olive.board.service.BoardService;
import com.olive.user.service.UserVO;

@Controller
public class AttachmentController {
   
   @Autowired
   private AttachmentService attachmentService;
   
   @RequestMapping(value="/insertAttachment.do")   //첨부파일등록
   public String insertAttachment(@RequestParam("attachment") MultipartFile file, AttachmentVO vo, HttpServletRequest request)
         throws IllegalStateException, IOException {
      System.out.println(vo);
      String list_title = request.getParameter("list_title");
      System.out.println(">>> 첨부파일등록- insertAttachment()"+list_title);
      String board_index = vo.getBoard_index();
      
      UUID uuid = UUID.randomUUID();
      String original_file_name = file.getOriginalFilename();
      vo.setOriginal_file_name(original_file_name);
      String fileName = uuid + file.getOriginalFilename();

      File attach = new File("C:\\mineralpoint\\bit_3rd_project\\olive2\\src\\main\\webapp\\attachment\\"+ fileName);
      file.transferTo(attach);
      vo.setFile_name(fileName);
      
      System.out.println("첨부파일 등록 vo :" +vo);
      
      attachmentService.insertAttachment(vo);
         
      return "redirect:getCard.do?board_index=" + board_index + "&list_title="+URLEncoder.encode(list_title, "UTF-8")  ;

   }
   
   @RequestMapping("/deleteAttachment.do")     //첨부파일 삭제
   public String deleteAttachment(AttachmentVO vo)
         throws IllegalStateException, IOException {
      System.out.println(">>> 첨부파일 삭제 - insertAttachment()");
      String board_index = vo.getBoard_index();
      String attachment_id = vo.getAttachment_id();
      
      System.out.println("vo : "+vo);
      attachmentService.deleteAttachment(attachment_id);
      return "redirect:getCard.do?board_index=" + board_index;

   }
   
   
   
   
}