<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="pxu.edu.vn.bai2.*" %>
<%@ page import="pxu.edu.vn.dao.connectjdbc.*" %>
<%
//Lay ket noi toi CSDL
	if(DBConnection.dbConnection == null){
		//Chua co ket noi toi CSDL nen phai khoi tao
		String dbServer = application.getInitParameter("dbServer");
		String dbAddress = application.getInitParameter("dbAddress");
		String dbPort = application.getInitParameter("dbPort");
		String database = application.getInitParameter("database");
		String username = application.getInitParameter("username");
		String password = application.getInitParameter("password");
		String dbDriver = application.getInitParameter("dbDriver");
		DBConnection conn = new DBConnection(dbServer, dbAddress, dbPort, database,
												username, password, dbDriver);
	}

    
    Statement stmt = null;
    ResultSet rs = null;
    try {
        stmt = DBConnection.dbConnection.createStatement();
        rs = stmt.executeQuery("SELECT * FROM student");
        StringBuilder jsonData = new StringBuilder("[");
        while (rs.next()) {
            jsonData.append("{");
            jsonData.append("\"idstudent\": \"" + rs.getString("idstudent") + "\",");
            jsonData.append("\"hoten\": \"" + rs.getString("hoten") + "\",");
            jsonData.append("\"gioitinh\": \"" + rs.getString("gioitinh") + "\",");
            jsonData.append("\"ngaysinh\": \"" + rs.getString("ngaysinh") + "\",");
            jsonData.append("\"sdt\": \"" + rs.getString("sdt") + "\"");
            jsonData.append("},");
        }
        jsonData.deleteCharAt(jsonData.lastIndexOf(","));
        jsonData.append("]");

        out.print(jsonData.toString());
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try { if (rs != null) rs.close(); } catch (SQLException e) { e.printStackTrace(); }
        try { if (stmt != null) stmt.close(); } catch (SQLException e) { e.printStackTrace(); }
    }
%>
