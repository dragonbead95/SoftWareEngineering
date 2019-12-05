<%@page import="db.DBConn"%>
<%@page import="java.sql.*, java.lang.*, java.util.* "%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
    
<%!
/*****************************************************************************************/


//����� ���� ����
//�̸��� ��ȣ�� ���ϸ� ���εǸ� true, ������ �ȵǸ� false�� ��ȯ�Ѵ�.

//�α��� ���ν� true, �ƴϸ� false
private boolean authorizeStatus = false;

//authorizeMembership(String trialUsername, String trialPassword)
//����� �̸��� ��ȣ�� ���Ͽ� �α��� ���� ���θ� �����ϴ� �����ƾ
//trialUsername : �α����� �õ��ϴ� ����� �̸�
//trialPassword : �α����� �õ��ϴ� ����ڰ� �Է��� ��ȣ
//�α��� �����ϸ� true�� ��ȯ�ϰ�, ���� �ź� �� false�� ��ȯ�Ѵ�.

private static boolean authorizeMembership(String trialUsername, String trialPassword)
{	
	try{
		String sql = "select * from student";
		Connection Conn = DBConn.getMySqlConnection();
		Statement stmt = Conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		
		while(rs.next())
		{
			if(rs.getString(1).equals(trialUsername) && rs.getString(9).equals(trialPassword))
			{
				return true;		
			}
		}
		
	}catch(SQLException e)
	{
		System.out.println(e);
	}catch(Exception el)
	{
		System.out.println(el);
	}
	return false;	
}
%>
     
<%
/***********************************************************************************************/
//�� ������ ��� ����
//���ǿ� ��ϵ� ����� �̸� �� �Ϸθ� �о�ͼ� �α��� ��ȿ���� �����Ѵ�.
String membershipUsername = null;
String membershipPassword = null;
authorizeStatus = false;

//�α��� ��ȿ�� �˻� : ���ǿ� ����� �α��� ������ �����Ѵ�.
//���� ���� �� membershipUsername�̶�� �����Ͱ� �ִ��� Ȯ��
if(session.getAttribute("membershipUsername")!=null)
{
	//membershipUsername�� �����ϸ�, membershipPassword��� �����͵� �ִ��� Ȯ��
	if(session.getAttribute("membershipPassword")!=null)
	{
		//���� �������� ���� ����� �̸��� ��ȣ�� �α��� ���°� ��ȿ���� ����
		membershipUsername = (String)session.getAttribute("membershipUsername");
		membershipPassword = (String)session.getAttribute("membershipPassword");
		
		//membershipUsername�� membershipPassword�� ��� ���ŵǸ�,
		//�ռ� ���ǵ� authorizeMembership �޼���� ���� ��û�Ѵ�.
		authorizeStatus = authorizeMembership(membershipUsername, membershipPassword);
	}
}
%>    
    
    
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
				<button class="tablink" id="std_btn"
					onclick="openPage('StudentInformation', this, '#A9BCF5')" disabled>�л�����</button>
				<button id="man_btn" class="tablink" onclick="openPage('manager', this, '#A9BCF5')" disabled>������</button>
			</div>
		
			<!-- ����ȭ��� �α���ȭ�� -->	
			<div id="Main" class="tabcontent">
				<form name="formm" method="post">
				<p>
				<label><b>ID</b></label>
				<br>
				<input type="text" id="id" name="id"> 
				<br>
				</p>
				<p>
				<label><b>PASSWORD</b></label>
				<br>
				<input type="password" id="passwd" name="passwd">
				<br>
				</p>
				<button class="button" style="width:80px;" onClick="go_login()">�α���</button>
				<button class="button" style="width:80px;"  onClick="go_SignUp()">ȸ������</button>
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
						<table class="a">
							<tr>
								<th>����</th>
								<th>�̸�</th>
								<th>�й�</th>
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
								<td><input type="checkbox" name="deleteCheck" value="deleteCheck"></td>
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
			</div>
			<script type="text/javascript" src="ScriptFolder/Script1.js"></script>
			<script>
			// Get the element with id="defaultOpen" and click on it
			document.getElementById("defaultOpen").click();
			</script>
</body>
</html>
