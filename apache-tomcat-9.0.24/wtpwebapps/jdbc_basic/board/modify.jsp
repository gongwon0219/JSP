<%@page import="kr.co.park.board.model.Board"%>
<%@page import="kr.co.park.board.model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	Long id = Long.parseLong(request.getParameter("id"));

	Board article = BoardDAO.getInstance().selectOne(id);	

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2><%= id %>번 게시물 내용 수정</h2>
<form action="modify_con.jsp" method="post">
	<input type="hidden" name="boardNo" value="<%= article.getBoardID() %>">
	<p>
		# 글번호: <%= article.getBoardID() %><br>
		# 작성자: <input type="text" name="writer" value="<%= article.getWriter() %>"><br>
		# 제목: <input type="text" name="title" value="<%= article.getTitle() %>"><br>
		# 내용: <textarea rows="3" name="content"><%= article.getContent() %></textarea>	
		<br>
		<input type="submit" value="수정">
	</p>
</form>

<a href="list.jsp">글 목록보기</a>&nbsp;


</body>
</html>



