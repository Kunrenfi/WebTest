<%@ page contentType="text/html; charset=UTF-8" language="java" buffer="32kb"%>
<%@ page import="com.mingrisoft.*"%>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%
	News News1 =new News();
	Function Fun = new Function();
	String IP = request.getRemoteAddr();
	String AdminName=(String) session.getAttribute("AdminName");
	String NewsID =request.getParameter("NewsID");
	if(News1.DelNews(NewsID,AdminName,IP)){
		out.print("<script>alert('新闻删除成功！');location.href='news.jsp';</script>");
	}else{
		out.print("<script>alert('新闻删除失败！');location.href='news.jsp';</script>");
	}
	
%>
