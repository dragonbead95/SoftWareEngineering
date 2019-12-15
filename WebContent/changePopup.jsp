<%@page import="com.mysql.cj.protocol.Message"%>
<%@page import="db.*"%>
<%@page import="java.sql.*, java.lang.*, java.util.* "%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<%
			String stdno = request.getParameter("delete_check");
			Connection conn = DBConn.getMySqlConnection();
			Statement stmt = conn.createStatement();
			String sql = "select * from student where stdno="+stdno;
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			Student student=null;
			while(rs.next())
			{
				student = new Student(
						rs.getString("name"),
						rs.getString("stdno"),
						rs.getString("birthdate"),
						rs.getString("major"),
						rs.getString("grade"),
						rs.getString("personal_id"),
						rs.getString("phone"),
						"S",
						rs.getString("pwd"));
			}
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Information</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!--===============================================================================================-->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/roboto-font.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-5/css/fontawesome-all.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="StyleSheetFolder/util.css">
<link rel="stylesheet" href="StyleSheetFolder/studentInfo.css" />
<!--===============================================================================================-->
</head>

<body class="form-v5">
	<!-- �л����� ȭ�� -->
	<div class="page-content">
		<div class="form-v5-content"  style="margin-top: 10px; margin-bottom: 10px;">
			<form name="formm" class="form-detail" action="#" method="post" onsubmit="return false">
				<h2>�л����� ����â</h2>
				<div class="form-row">
					<label for="name">�̸�</label> <input type="text" name="name"
						id="name" value="<%=student.getName() %>">
				</div>
				<div class="form-row">
					<label for="studentId">�й�</label> <input type="text"
						name="studentId" id="studentId" readonly="readonly" value="<%=student.getId() %>">
				</div>
				<div class="form-row">
					<label for="birthDate">�������</label> <input type="text"
						name="birthDate" id="birthDate" readonly="readonly" value="<%=student.getBirthdate() %>">
				</div>
				<div class="form-row">
					<label for="divison">�а�</label> <input type="text"
						name="divison" id="divison" value="<%=student.getMajor() %>">
				</div>
				<div class="form-row">
					<label for="grade">�г�</label> <input type="text"
						name="grade" id="grade" value="<%=student.getGrade() %>">
				</div>
				<div class="form-row">
					<label for="personalId">�ֹε�Ϲ�ȣ</label> <input type="text"
						name="personalId" id="personalId" readonly="readonly" value="<%=student.getPersonal_id() %>">
				</div>
				<div class="form-row">
					<label for="address">����ó</label> <input type="text"
						name="address" id="address" value="<%=student.getPhoneNumber() %>">
				</div>
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="����" onclick="go_change()">
				</div>
			</form>
		</div>
	</div>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>