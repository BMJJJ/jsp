<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  String mid = request.getParameter("mid");
  String pwd = request.getParameter("pwd");

%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert</title>
  <%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<jsp:include page="/include/nav.jsp"/>
<p><br/></p>
<div class="container">
    <h2>이곳은 hh01_m.jsp</h2>
  <p>아이디 : <%=mid %></p>
  <p>비밀번호 : <%=pwd %></p>
  <p><a href="hh01.jsp">돌아가기</a></p>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>