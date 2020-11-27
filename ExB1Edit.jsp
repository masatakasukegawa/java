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

 <p> アンケート入力ページ</p>

    <form method=post action="ExB1UpdateServlet">
	   <p> 何をプレゼントしたらいいと思う？</p>
			<input type="radio" name="type" value="1"<% if(answer.getType()==1){%>checked<%} %>/>ケーキ<br/>
			<input type="radio" name="type" value="2"<% if(answer.getType()==2){%>checked<%} %>/>指輪<br/>
			<input type="radio" name="type" value="3"<% if(answer.getType()==3){%>checked<%} %>/>ジャイアンコンサートチケット<br/>
		<br/>
	    <p>どこで渡したらいいと思う？</p>
			<input type="radio" name="place" value="1"<% if(answer.getPlace()==1){%>checked<%} %>/>教室で<br/>
			<input type="radio" name="place" value="2"<% if(answer.getPlace()==2){%>checked<%} %>/>しずかちゃんの家で<br/>
			<input type="radio" name="place" value="3"<% if(answer.getPlace()==3){%>checked<%} %>/>ジャイアンコンサート会場で<br/>
		<br/>
		<p>あなたの名前を教えてください。</p>
		    <input type="text" name="name" value="<%= answer.getName()%>"/><br />

		    <input type="submit" value="訂正したよ～" />
    </form>
  </body>
</html>