<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 
	
  String img = request.getParameter("img");
	
  String[] img2 = request.getParameterValues("img2"); 

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Insert</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <p>
    <img src="<%=request.getContextPath()%>/images/<%=img%>.jpg" width="300px" />
  </p>
  <hr/>
  <%
    for(String im : img2) {
    	out.println("<img src='"+request.getContextPath()+"/images/"+im+"' width='200px' />");
    }
  %>  
  <hr/>
  <p><a href="t08_이미지숙제.jsp" class="btn btn-warning">돌아가기</a></p>
</div>
	
	
	
<p><br/></p>
</body>
</html>