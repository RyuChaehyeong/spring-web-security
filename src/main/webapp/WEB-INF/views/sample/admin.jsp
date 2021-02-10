<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/a076d05399.js"></script>


</head>
<body>
<h1>/sample/admin page</h1>

<!-- 책에는 사용자 아이디 property가 principal.member.username으로 되어 있는데 여기는 id로 했음 -->

<p>principal: <sec:authentication property="principal"/></p>
<p>MemberVO: <sec:authentication property="principal.member"/></p>
<p>사용자 이름: <sec:authentication property="principal.member.name"/></p>
<p>사용자 아이디: <sec:authentication property="principal.member.id"/></p>
<p>사용자 권한 리스트: <sec:authentication property="principal.member.authList"/></p>

<a href="/customLogout">로그아웃</a>

</body>
</html>