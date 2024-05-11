<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file = "/include/certification.jsp" %>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>t5input.jsp</title>
  <%@ include file = "/include/bs4.jsp" %>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<jsp:include page="/include/nav.jsp"/>
<p><br/></p>
<div class="container">
  <hr/>
  <form name="myform" method="post" action="t5inputOk.do5">
  	<div>아이디<input type="text" name="mid" required class="form-control"/></div>
  	<hr/>
  	<input type="submit" value="회원가입하기" class="btn btn-success mr-2"/>
  	<a href="test5.do5" class="btn btn-warning">돌아가기</a>
	</form>
 </div>
<p><br/></p>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>