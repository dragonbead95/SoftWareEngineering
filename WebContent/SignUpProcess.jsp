<%@page import="com.mysql.cj.protocol.Message"%>
<%@page import="db.*"%>
<%@page import="java.sql.*, java.lang.*, java.util.* "%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	
	GUI gui = new GUI();
	boolean result = gui.clickOnSignUpButton(request);
	
	if(result==true)
	{
	%>
		<script>
		alert("ȸ�������� �Ϸ�Ǿ����ϴ�.");
		self.close();
		</script>
<%
	}else{
%>
		<script>
		alert("ȸ�������� �����Ͽ����ϴ�.");
		location.href = "SignUp.jsp";
		</script>
<%
	}	
%>