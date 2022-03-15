package com.pp.peterpet.tour;



import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pp.peterpet.board.BoardDTO;
import com.pp.peterpet.comment.CommentDTO;
import com.pp.peterpet.user.UserDAO;
import com.pp.peterpet.user.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TourController {
	@Autowired
	private TourDAO tdao;
	@Autowired
	private UserDAO udao;
	
	// 페이지 진입
	@RequestMapping(value = "/TourHomeC", method = RequestMethod.GET)
	public String TourHomeC(HttpServletRequest request) {
		UserDAO.loginCheck(request);
		
		request.setAttribute("contentPage", "tour/TourList.jsp");
		return "index";
	}

	// db에서 출력
	@RequestMapping(value = "TourMain", method = RequestMethod.GET)
	public String TourMain(HttpServletRequest request) {
		UserDAO.loginCheck(request);
		// tdao.putTour(p, req);
		//tdao.getTour(request);
		int p=1;
		if(request.getParameter("p")!= null){
		
			p = Integer.parseInt(request.getParameter("p"));
		}
		
		
		tdao.getTour(request);
		tdao.paging(p, request);
		
		
		request.setAttribute("contentPage", "tour/TourList.jsp");
		return "index";
		
		
	}

	// base db 업데이트
	@RequestMapping(value = "TourUpdate", method = RequestMethod.GET)
	public String TourUpdate(TourDTO p_up, TourDTO p_in, HttpServletRequest request) {
		UserDAO.loginCheck(request);

		tdao.upsertTour(p_up, p_in, request);
		// tdao.getAllTour(req);
		 request.setAttribute("contentPage", "tour/TourList.jsp");
		return "index";
	}

	@RequestMapping(value = "TourPageC", method = RequestMethod.GET)
	public String TourPageC(HttpServletRequest request) {
		
		UserDAO.loginCheck(request);

		int p;
		if(request.getParameter("p").equals("") || request.getParameter("p") == null){
			p = 1;
		}else {
			p = Integer.parseInt(request.getParameter("p"));
		}
		
//tdao.getTour(request);
		//tdao.paging(p, request);
		
		//request.setAttribute("contentPage", "tour/TourList.jsp");
		String[] url = request.getHeader("referer").split("&") ;
		
		return "redirect:"+url[0]+"&"+url[1]+"&p="+p;
	}

	
	@RequestMapping(value = "TourView", method = RequestMethod.GET)
	public String TourViewC(HttpServletRequest request) {
		//TourDTO b = tdao.getTourV(request);
		UserDAO.loginCheck(request);
	
		tdao.tourView(request);
		 request.setAttribute("contentPage", "tour/TourView.jsp");
		return "index";
	}
	

}
