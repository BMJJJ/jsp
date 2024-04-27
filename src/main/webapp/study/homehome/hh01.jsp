<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
  <h2>값 전송 연습(Get/Post)</h2>
  <form name="myform" method="post" action="<%=request.getContextPath()%>/study/jhomehome/hh01Ok">
  	<div>아이디
  	  <input type="text" name="mid" value="admin" class="form-control mb-3" autofocus required />
  	</div>
  	<div>비밀번호
  	  <input type="password" name="pwd" value="1234" class="form-control mb-3" required />
  	</div>
  	<div>
  	  <input type="submit" value="로그인" class="btn btn-success"/>
  	  <input type="reset" value="다시입력" class="btn btn-primary"/>
  	  <input type="submit" value="회원가입" class="btn btn-info"/>
  	  <div class="form-check">
			 <label class="form-check-label">
			 <input type="checkbox" class="form-check-input" value="아이디저장">아이디저장
			 </label>
			</div>
  	</div>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp"/>
</body>
</html>