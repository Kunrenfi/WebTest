<%@ page contentType="text/html; charset=utf-8" language="java" %>
<%@ page import="com.mingrisoft.*"%>
<%@ include file="Session.jsp"%>
<%
	request.setCharacterEncoding("utf-8");

	News News1= new News();
	Function Fun = new Function();
	String[] sa = null;
	String NewsID = request.getParameter("newsId");
	String Action =request.getParameter("Action");
	if(Action!=null&&Action.equals("Edit")){
		String IP = request.getRemoteAddr();//获取用户IP地址
		
		String AdminName = (String)session.getAttribute("AdminName");
		String[] s = new String[2];
		s[0] = request.getParameter("upd_NewsTitle");
		s[1] = request.getParameter("upd_NewsContent");
		String sOK = News1.EditNews(s, NewsID, AdminName, IP);
		
		if (sOK.equals("Yes"))//判断返回值
		{
			out.println("<script>alert('修改新闻成功!');location.href='news.jsp';</script>");//页面输出
			return;//结束
		}
		else //否则
		{
			out.println("<script>alert('修改新闻失败!');location.href='news.jsp';</script>");//页面输出
			return;//结束
		}
	}

%>
