<%@page import="db.*"%>
<%@page import="java.sql.*, java.lang.*, java.util.* "%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    	<%!
	
%>
		<%
		/***********************************************************************************************/
		//�� ������ ��� ����
		//���ǿ� ��ϵ� ����� �̸� �� �Ϸθ� �о�ͼ� �α��� ��ȿ���� �����Ѵ�.
		
		String authorizeStatus = "";
		String userIdentity = "";
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		GUI gui = new GUI();
		authorizeStatus = gui.clickOnLoginButton(id, passwd);
		
		
	
	
		//�α��� ��û�� ���εǾ��ٸ�.
		if(authorizeStatus.equals("S"))
		{	
					%>
					
					<script>
					location.href="./student_logout.jsp";
					</script>
					 
					<%
					//������ ��ȿ�Ⱓ�� ���� �������κ��� 12�ð��̴�. 60��*60*12 ->12�ð�
					session.setMaxInactiveInterval(12*60*60);
		}
		else if(authorizeStatus.equals("M"))
		{
			
					%>
					 
						<script>
						location.href="./manager_logout.jsp";
						</script>
						
					<%
			//������ ��ȿ�Ⱓ�� ���� �������κ��� 12�ð��̴�. 60��*60*12 ->12�ð�
			session.setMaxInactiveInterval(12*60*60); 
		}else{
			%>
			<script>
			alert("ȸ�������� ��ġ���� �ʽ��ϴ�.");
			location.href = "login.jsp";
			</script>
			<%
		}
		%>    
	
	
