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
<!-- test -->
			<!-- ��ȭ�� -->
			<div class="tab">
				<button class="tablink" 
				onclick="openPage('Main', this, '#A9BCF5')"
				id="defaultOpen">����</button>
				<button class="tablink"
					onclick="openPage('StudentInformation', this, '#A9BCF5')">�л�����</button>
				<button class="tablink" onclick="openPage('manager', this, '#A9BCF5')">������</button>
			</div>
		
			<!-- ����ȭ��� �α���ȭ�� -->	
			<div id="Main" class="tabcontent">
				<form name="formm" method="post">
					<table>
						<tr id="id_row">
							<td style="text-align: center;">ID</td>
							<td><input type="text" name="id" maxlength="12"
								style="width: 140px;"></td>
							<td>
								<button class="button" style="width: 80px;" onClick="go_Check()">�α���</button>
							</td>
						</tr>
		
						<tr id="pw_row">
							<td style="text-align: center;">PASSWORD</td>
							<td><input type="password" name="passwd" maxlength="12"
								style="width: 140px;"></td>
							<td>
								<button class="button" style="width: 80px;" onClick="go_SignUp()">ȸ������</button>
							</td>
						</tr>
						<tr id="logout_row" style="display:none">
							<td style="text-align: center;" colspan="2">���������ý��ۿ� �α��� �ϼ̽��ϴ�.</td>
							
							<td>
								<button class="button" style="width: 80px;" onClick="go_Check()">�α׾ƿ�</button>
							</td>
						</tr>
		
					</table>
				</form>
			</div>
			
			<!-- �л����� ȭ�� -->
			<div id="StudentInformation" class="tabcontent">
				<form method="post" action="">
					<table>
						<tr>
							<td>�̸�:</td>
							<td style="width: 140px;"></td>
							<td><input type="text" name="name" maxlength="12"
								style="width: 140px;" readonly="readonly"></td>
						</tr>
		
						<tr>
							<td>�й�:</td>
							<td></td>
							<td><input type="text" name="studentId" maxlength="12"
								style="width: 140px;" readonly="readonly"></td>
						</tr>
						<tr>
							<td>�������:</td>
							<td></td>
							<td><input type="text" name="birthDate" maxlength="12"
								style="width: 140px;" readonly="readonly"></td>
						</tr>
						<tr>
							<td>�а�:</td>
							<td></td>
							<td><input type="text" name="divison" maxlength="12"
								style="width: 140px;" readonly="readonly"></td>
						</tr>
						<tr>
							<td>�г�:</td>
							<td></td>
							<td><input type="text" name="grade" maxlength="12"
								style="width: 140px;" readonly="readonly"></td>
						</tr>
						<tr>
							<td>�ֹε�Ϲ�ȣ:</td>
							<td></td>
							<td><input type="text" name="personalId" maxlength="12"
								style="width: 140px;" readonly="readonly"></td>
						</tr>
						<tr>
							<td>����ó:</td>
							<td></td>
							<td><input type="text" name="address" maxlength="12"
								style="width: 140px;" readonly="readonly"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td>
								<button class="button" style="width: 80px; float: right;"
									onclick="popup_change()">����</button>
							</td>
						</tr>
					</table>
				</form>
			</div>
			
			<!-- ������ ȭ�� -->
			<div id="manager" class="tabcontent">
			  <table>
					<tr>
						<td>
							<button class="button" style="width: 80px;">��ȸ</button>
						</td>
						<td>
							<button class="button" style="width: 80px;">���</button>
						</td>
						<td>
							<button class="button" style="width: 80px;">����</button>
						</td>
						<td>
							<button class="button" style="width: 80px;">����</button>
						</td>
						
					</tr>
				
				</table>
			
				<div class = "div">
					<table class = "a">
					<tr>
						<th>
							�̸�
						</th>
						<th>
							�й�
						</th>
						<th>
							�������
						</th>
						<th>
							�а�
						</th>
						<th>
							�г�
						</th>
						<th>
							�ֹε�Ϲ�ȣ
						</th>
						<th>
							����ó
						</th>
					</tr>
				</table>
				</div>
			</div>
		
			<script type="text/javascript" src="ScriptFolder/Script1.js"></script>
			<script>
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen").click();
			</script>
</body>
</html>
