<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SignUP</title>
<link rel="stylesheet" href="StyleSheetFolder/StyleSheet.css">

</head>
<body>

	<table>
		<tr>
			<td>
				<button class="button button1"></button>
			</td>
			<td style="text-align:center;">
				<span class="indent">�л�</span>
			</td>
			<td>
				<button class="button button2"></button>
			</td>
			<td style="text-align:center;">
				<span class="indent">������</span>
			</td>
			
		</tr>
	
	</table>
	
	
	
	
	
	<div>&nbsp;</div>
	<table>
		<tr>
			<td style="text-align:justify;">
				�̸� : 
			</td>
			<td>
				<input type="text" name="name" maxlength="12" style="width: 140px;">
			</td>
			<td style="text-align:justify;">
				ID
			</td>
			<td>
				<input type="text" name="id" maxlength="12" style="width: 140px;">
			</td>
		</tr>
		
		<tr>
			<td style="text-align:justify;">
				������� :
			</td>
			<td>
				<input type="date" name="bday" maxlength="12" style="width: 140px;">
			</td>
			<td style="text-align:justify;">
				PASSWORD
			</td>
			<td>
				<input type="password" name="passwd" maxlength="12" style="width: 140px;">
			</td>
		</tr>
		<tr>
			<td style="text-align:justify;">
				�а� :
			</td>
			<td>
				<input type="text" name="subject" maxlength="12" style="width: 140px;">
			</td>
		</tr>
		<tr>
			<td style="text-align:justify;">
				�г� :
			</td>
			<td>
				<input type="number" name="schoolyear" maxlength="12" style="width: 140px;">
			</td>
		</tr>
		<tr>
			<td style="text-align:justify;">
				�ֹε�Ϲ�ȣ :
			</td>
			<td>
				<input type = "text" name = "security_number" pattern = "\d{6}\-\d{7}" title = "123456-1234567 �������� �Է����ּ���"/>
			</td>
		</tr>
		<tr>
			<td style="text-align:justify;">
				����ó :
			</td>
			<td>
				<input type="tel" name="phone" pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required>
			</td>
		</tr>
	</table>
	<div>&nbsp;</div>
	<div style="text-align: right;">&nbsp;<button class="button" style="width: 80px;">Ȯ��</button></div>
	
	
	
</body>
</html>