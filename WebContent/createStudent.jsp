<%@page import="com.mysql.cj.protocol.Message"%>
<%@page import="db.*"%>
<%@page import="java.sql.*, java.lang.*, java.util.* "%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	
	GUI gui = new GUI();
	boolean result = gui.clickOnInsertButton(request);
	
	if(result==true)
	{
%>
    	<form name="frm" method="post" action="manager_logout.jsp">
    		
    	</form>
    	<script lang="javascript">
    		alert("�л������ �Ϸ�Ǿ����ϴ�.");
    		window.opener.document.formm.submit();
    		window.close();
    	</script>
<%
	}else{
%>
		<script>
		alert("�л������ �����߽��ϴ�.");
		</script>
<%
	}	
%>