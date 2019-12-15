package db;
import db.*;
import java.sql.*;
import java.io.IOException;
import java.lang.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Validate {
	private boolean authorizeStatus = false;
	
	public String requestToLogin(String id, String password,HttpSession session) {
		
		//POST ������� �Ѿ�� ������ �� trialUsername�̶�� �����Ͱ� �ִ��� Ȯ��
				if(id!=null)
				{
					//trialUsername�� �����ϸ�, trialPassword��� �����͵� �ִ��� Ȯ��
					if(password!=null)
					{
						//trialUsername�� trialPassword�� ��� ���ŵǸ�,
						//������ ������ authorizeMembership �����ƾ�� ȣ���Ͽ� �α��� ��û�Ѵ�.

						authorizeStatus = authorizeMembership(id, password);
						
					}
				}
				
				if(authorizeStatus==true)
				{
					return checkUserIdentify(id);
				}
		return null;
	}

	public boolean requestToLogOut(HttpSession session, HttpServletResponse response) {
		session.invalidate();
		try {
			response.sendRedirect("login.jsp");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}
	
	public static String checkUserIdentify(String id) {
		try{
			String sql = "select stdno, identity from student";
			Connection Conn = DBConn.getMySqlConnection();
			Statement stmt = Conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				if(rs.getString(1).equals(id))
				{
					return "S";
				}
			}
			
			sql = "select id, identity from manager";
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				if(rs.getString(1).equals(id))
				{
					return "M";
				}
			}
		}catch(SQLException e)
		{
			System.out.println(e);
		}catch(Exception el)
		{
			System.out.println(el);
		}
		return null;
	}
	
	public String encrypt(User user) {
		String password = "HEX(AES_ENCRYPT('"+user.getPassword()+"',"+user.getId()+"))";
		
		return password;
	}
	
/*****************************************************************************************/
	
	
	//����� ���� ����
	//�̸��� ��ȣ�� ���ϸ� ���εǸ� true, ������ �ȵǸ� false�� ��ȯ�Ѵ�.
	
	//�α��� ���ν� true, �ƴϸ� false

	
	//authorizeMembership(String trialUsername, String trialPassword)
	//����� �̸��� ��ȣ�� ���Ͽ� �α��� ���� ���θ� �����ϴ� �����ƾ
	//trialUsername : �α����� �õ��ϴ� ����� �̸�
	//trialPassword : �α����� �õ��ϴ� ����ڰ� �Է��� ��ȣ
	//�α��� �����ϸ� true�� ��ȯ�ϰ�, ���� �ź� �� false�� ��ȯ�Ѵ�.
	
	private static boolean authorizeMembership(String trialUsername, String trialPassword)
	{	
		
		try{
			
			Connection Conn = DBConn.getMySqlConnection();
			Statement stmt = Conn.createStatement();
			ResultSet rs = null;
			
			String ident = checkUserIdentify(trialUsername);

			if(ident==null)
			{
				return false;
			}
			else if(ident.equals("S"))
			{
				
				
				String sql = "select *, aes_decrypt(unhex(pwd),'"+trialUsername+"') from student";
				rs = stmt.executeQuery(sql);
				
				while(rs.next())
				{
					if(rs.getString(1).equals(trialUsername) && rs.getString(10).equals(trialPassword))
					{
						return true;		
					}
				}
			}else if(ident.equals("M"))
			{
				String sql = "select *, aes_decrypt(unhex(pwd),'"+trialUsername+"') from manager";
				rs = stmt.executeQuery(sql);
				
				while(rs.next())
				{
					
					if(rs.getString(3).equals(trialUsername) && rs.getString(6).equals(trialPassword))
					{
						
						return true;		
					}
				}
			}
				rs.close();
				
		}catch(SQLException e)
		{
			System.out.println(e);
		}catch(Exception el)
		{
			System.out.println(el);
		}
		return false;	
	}
}
