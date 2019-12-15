<%@page import="com.mysql.cj.protocol.Message"%>
<%@page import="db.*"%>
<%@page import="java.sql.*, java.lang.*, java.util.* "%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	GUI gui = new GUI();
	request.setCharacterEncoding("euc-kr");
	
	ResultSet rs = gui.requestToSelect(request);

%>
<!DOCTYPE html>
<html>
<head>
<title>login</title>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="StyleSheetFolder/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="StyleSheetFolder/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="StyleSheetFolder/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="StyleSheetFolder/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="StyleSheetFolder/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="StyleSheetFolder/util.css">
<link rel="stylesheet" type="text/css"
	href="StyleSheetFolder/manager.css">

</head>
<body>
	<!-- ������ ȭ�� -->

	<form name="formm" method="post" onsubmit="return false">
		<div id="manager">

			<div class="buttoncontainer">
				<button class="btn" onClick="popup_view();">��ȸ</button>
				<button class="btn" onClick="popup_add();">���</button>
				<button class="btn" onClick="popup_change();">����</button>
				<button class="btn" onClick="go_delete()">����</button>
				<button class="btn" onClick="go_logout()">�α׾ƿ�</button>
			</div>

			<div class="limiter">
				<div class="container-table100">
					<div class="wrap-table100">
						<div class="table100">

							<table>
								<thead>
									<tr class="table100-head">
										<th class="column1">����</th>
										<th class="column2">�й�</th>
										<th class="column3">�̸�</th>
										<th class="column4">�������</th>
										<th class="column5">�а�</th>
										<th class="column6">�г�</th>
										<th class="column7">�ֹε�Ϲ�ȣ</th>
										<th class="column8">����ó</th>
									</tr>
								</thead>
								<%
									while (rs.next()) {
								%>
								<tbody>
									<tr>
										<td class="column1"><input type="checkbox"
											name="delete_check" value="<%=rs.getString("stdno")%>"></td>
										<td class="column2" name="stdno" value="<%=rs.getString("stdno")%>"><%=rs.getString("stdno")%></td>
										<td class="column3" name="name" value="<%=rs.getString("name")%>"><%=rs.getString("name")%></td>
										<td class="column4" name="birthdate" value="<%=rs.getString("birthdate")%>"><%=rs.getString("birthdate")%></td>
										<td class="column5" name="major" value="<%=rs.getString("major")%>"><%=rs.getString("major")%></td>
										<td class="column6" name="grade" value="<%=rs.getString("grade")%>"><%=rs.getString("grade")%></td>
										<td class="column7" name="personal_id" value="<%=rs.getString("personal_id")%>"><%=rs.getString("personal_id")%></td>
										<td class="column8" name="phone" value="<%=rs.getString("phone")%>"><%=rs.getString("phone")%></td>
									</tr>

									<%
										}
									%>

								</tbody>
							</table>

						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

	<script type="text/javascript" src="ScriptFolder/Script1.js"></script>
</body>
</html>
