package kr.magasin.adminPage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.magasin.adminPage.model.service.ChartService;
import kr.magasin.adminPage.model.vo.Chart;

/**
 * Servlet implementation class ChartServlet
 */
@WebServlet(name = "Chart", urlPatterns = { "/chart" })
public class ChartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String chartIndex = request.getParameter("chartIndex");
		String startDate = request.getParameter("startDate");
		String endDate = request.getParameter("endDate");
		
		ChartService service = new ChartService();
		ArrayList<Chart> chartList = service.ChartList(chartIndex, startDate, endDate);
		
		if(chartList == null) {
			return;
		}
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		new Gson().toJson(chartList, response.getWriter());

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
