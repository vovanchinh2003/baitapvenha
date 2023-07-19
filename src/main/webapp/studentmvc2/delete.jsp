<%@page import="pxu.edu.vn.dao.connectjdbc.DBConnection"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="pxu.edu.vn.bai2.*"%>
<%
int id = Integer.parseInt(request.getParameter("id"));

if (DBConnection.dbConnection == null) {
	//Chua co ket noi toi CSDL nen phai khoi tao
	String dbServer = application.getInitParameter("dbServer");
	String dbAddress = application.getInitParameter("dbAddress");
	String dbPort = application.getInitParameter("dbPort");
	String database = application.getInitParameter("database");
	String username = application.getInitParameter("username");
	String password = application.getInitParameter("password");
	String dbDriver = application.getInitParameter("dbDriver");
	DBConnection conn = new DBConnection(dbServer, dbAddress, dbPort, database, username, password, dbDriver);
}

PreparedStatement pstmt = null;
ResultSet rs = null;
try {
	pstmt = DBConnection.dbConnection.prepareStatement("DELETE FROM student WHERE idstudent = ?");
	pstmt.setInt(1, id);
	pstmt.executeUpdate();

	out.print("{\"success\": true}");
} catch (Exception e) {
	e.printStackTrace();
	out.print("{\"success\": false}");
} finally {
	try {
		if (pstmt != null)
	pstmt.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}

}
%>