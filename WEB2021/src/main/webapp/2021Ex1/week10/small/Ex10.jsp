<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Session ����</title>
</head>
<body>
	<p><h4>---- ������ �����ϱ� �� ----</h4>
	
	<%
		String id = (String) session.getAttribute("userID");
		String pw = (String) session.getAttribute("userPW");
		out.println("������ ���� �̸� userID : " + id + "<br>");
		out.println("������ ���� �� userPW : " + pw + "<br>");
		
		if(request.isRequestedSessionIdValid() == true)
			out.print("������ ��ȿ�մϴ�.");
		else 
			out.print("������ ��ȿ���� �ʽ��ϴ�.");
		
		session.invalidate();
	%>
	
	<p><h4>---- ������ ������ �� ----</h4>
	
	<%
		if(request.isRequestedSessionIdValid() == true)
			out.print("������ ��ȿ�մϴ�.");
		else 
			out.print("������ ��ȿ���� �ʽ��ϴ�.");
		
	%>
	
</body>
</html>