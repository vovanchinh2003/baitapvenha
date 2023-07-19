<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="pxu.edu.vn.bt3.ProductModel"
	import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<ProductModel> list = (ArrayList<ProductModel>) request.getAttribute("listProduct");
	%>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>Ten san pham</th>
			</tr>
		</thead>
		<tbody>
			<%
			for (ProductModel itr : list) {
			%>
			<tr>
				<td>
					<%
					out.print(itr.getProductID());
					%>
				</td>
				<td>
					<%
					out.print(itr.getProductName());
					%>
				</td>
			</tr>
			<%
			} //dong vong for
			%>
		</tbody>
	</table>
</body>
</html>