package com.uilangage.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.uilangage.servlet.common.MysqlService;

@WebServlet("db/ex01")
public class Ex01Controller extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		
		
		MysqlService mysqlService = new MysqlService();
		mysqlService.connect();
		
		String selectQuery = "SELECT* FROM `used_goods`;";
		ResultSet resultSet = mysqlService.select(selectQuery); 
		
		out.println("<html><head><title>중고물품</title></head><boby>");
		
		while(resultSet.next()) {
			String title = resultSet.getString("title");
			int price = resultSet.getInt("price");
			//제목 : 플스 팝니다, 가격 : 30000원
			out.println("<div>제목 : " + title + "가격 : " + price + "</div>");
		}
		
		out.println("</body></html>");
		
//		String insertQuery = "INSERT INTO `used_goods`\r\n"
//				+ "(`sellerId`,`title`,`price`,`description`)\r\n"
//				+ "value\r\n"
//				+ "(3,'고양이 간식 팝니다', 2000, '저희고양이 안먹어서 팔아요')";
//		int count = mysqlService.update(insertQuery);
//		
//		out.println("<div>삽입결과 : " + count + "</div>");
		
		mysqlService.disconnect();
		
		//데이터베이스 접속
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			//서버 아이디 비밀번호
//			String url = "jdbc:mysql://localhost:3306/namgyu";
//			String userId = "root";
//			String password = "root";;		
//			
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statement = connection.createStatement();
//			
//			String selectQuery = "SELECT* FROM `used_goods`;";
//			ResultSet resultSet = statement.executeQuery(selectQuery); 
//			
//			out.println("<html><head><title>중고물품</title></head><boby>");
//			
//			while(resultSet.next()) {
//				String title = resultSet.getString("title");
//				int price = resultSet.getInt("price");
//				//제목 : 플스 팝니다, 가격 : 30000원
//				out.println("<div>제목 : " + title + "가격 : " + price + "</div>");
//			}
//			
//			out.println("</body></html>");
//			
//			
//		} catch(SQLException e) {
//			e.printStackTrace();
//		}
		
	}
}
