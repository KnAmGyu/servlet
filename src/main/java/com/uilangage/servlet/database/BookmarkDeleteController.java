package com.uilangage.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.uilangage.servlet.common.MysqlService;
@WebServlet("/db/bookmark/delete")
public class BookmarkDeleteController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		int id = Integer.parseInt(request.getParameter("delete"));
		
		MysqlService mysqlService = MysqlService.getInstance(); 
		
		mysqlService.connect();
		
		String deleteQuery = "DELETE FROM `bookmark_list` WHERE id = " + id + ";";
		
		mysqlService.update(deleteQuery);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test/bookmark-list.jsp");
		
	}

		
}
