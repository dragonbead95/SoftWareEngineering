<%@page import="db.DBConn"%>
<%@page import="java.sql.*, java.lang.*, java.util.* "%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login</title>

<link rel="stylesheet" href="StyleSheetFolder/StyleSheet.css">

</head>
<body>
			<!-- ������ ȭ�� -->

			<div>
			<form name="formm" method="post">
			  <table>
					<tr>
						<td>
							<button class="button" style="width: 80px;">��ȸ</button>
						</td>
						<td>
							<button class="button" style="width: 80px;" onClick="popup_add();">���</button>
						</td>
						<td>
							<button class="button" style="width: 80px;">����</button>
						</td>
						<td>
							<button class="button" style="width: 80px;" onClick="go_delete()">����</button>
						</td>
						
					</tr>
				
				</table>
			
				<div class = "div">
				
					<table class="a">
					<tr>
						<th>����</th>
						<th>�й�</th>
						<th>�̸�</th>
						<th>�������</th>
						<th>�а�</th>
						<th>�г�</th>
						<th>�ֹε�Ϲ�ȣ</th>
						<th>����ó</th>
					</tr>
					<%
							Connection conn = DBConn.getMySqlConnection();
							out.println("db ���� ���� : " + conn);
							Statement stmt = conn.createStatement();
		
							String sql = "select * from student";
							stmt.executeQuery(sql);
		
							ResultSet rs = null;
		
							rs = stmt.executeQuery(sql);
					
							while (rs.next()) {
					%>
					
					<tr style="text-align: center">
						
						<td><input type="checkbox" name="delete_check" value="<%=rs.getString("stdno")%>"></td>
						<td><%=rs.getString("stdno")%></td>
						<td><%=rs.getString("name")%></td>
						<td><%=rs.getString("birthdate")%></td>
						<td><%=rs.getString("major")%></td>
						<td><%=rs.getString("grade")%></td>
						<td><%=rs.getString("personal_id")%></td>
						<td><%=rs.getString("phone")%></td>
						
					</tr>
					
					<%		
					
							}
					%>
					</table>
				</div>
			</form>
			</div>	
			<script type="text/javascript" src="ScriptFolder/Script1.js"></script>
</body>
</html>
