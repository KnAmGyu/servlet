package com.uilangage.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.uilangage.servlet.common.MysqlService;
@WebServlet("/db/bookmark/insert")
public class BookmarkInsertController  extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		MysqlService mysqlService = MysqlService.getInstance(); 
		
		mysqlService.connect();
		
		String query = "INSERT INTO `bookmark_list`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + url + "');";
		
		mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test/bookmark-list.jsp");
		
		
	}
}
