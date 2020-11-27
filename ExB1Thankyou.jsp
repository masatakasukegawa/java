<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>
<%@ page import="Sample.ExB1Answer"%>
<!DOCTYPE html>
<html lang="ja">

  <head><meta charset="UTF-8">
  <%
  ExB1Answer answer = new  ExB1Answer();

  if (session.getAttribute("answer") != null) {
		answer = (ExB1Answer) session.getAttribute("answer");
	}
  %>
  </head>
  <body>

 		<p> 投票完了</p>

    <form method=post action="ExB1Result.jsp">

		<%= answer.getName()%>さん<br />

		<p>投票ありがとうございました</p>

	<input type="submit" value="投票結果を見る" />

    </form>
  </body>
</html>