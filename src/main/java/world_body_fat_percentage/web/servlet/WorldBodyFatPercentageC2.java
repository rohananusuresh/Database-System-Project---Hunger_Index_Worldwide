package world_body_fat_percentage.web.servlet;

import java.io.IOException;
//import java.util.ArrayList;
//import java.util.Arrays;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;

//import javax.jws.WebService;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import world_body_fat_percentage.dao.WorldBodyFatPercentageDao;
import world_body_fat_percentage.domain.WorldBodyFatPercentage;
import world_body_fat_percentage.service.WorldBodyFatPercentageService;
//import entity1.service.Entity1Exception;
//import entity1.service.Entity1Service;
/**
 * Servlet implementation class UserServlet
 */

public class WorldBodyFatPercentageC2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public WorldBodyFatPercentageC2() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String method = request.getParameter("method");
//		WorldBodyFatPercentageDao entity1dao = new WorldBodyFatPercentageDao();
//		WorldBodyFatPercentage entity1 = null;
		WorldBodyFatPercentageService fb= new WorldBodyFatPercentageService();
		try {
				request.setAttribute("CCList", fb.findCCB());
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		} catch (InstantiationException e1) {
			e1.printStackTrace();
		} catch (IllegalAccessException e1) {
			e1.printStackTrace();
		}
		request.getRequestDispatcher("/jsps/Queryresult/c2.jsp").forward(request, response);
		
	}
}



