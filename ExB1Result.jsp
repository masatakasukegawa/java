<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>
<%@ page import="Sample.ExB1Result"%>
<!DOCTYPE html>
<html lang="ja">

  <head><meta charset="UTF-8">
  <%
  ExB1Result result = new  ExB1Result();

  if (session.getAttribute("result") != null) {
		result = (ExB1Result) session.getAttribute("result");
	}
  %>
  </head>
  <body>

 <p> アンケート結果ページ</p>


	   <p> 何をプレゼントしたらいいと思う？</p>

	   <table>
	   	<tr align="right"><td>ケーキ</td><td><%=result.getType1() %></td></tr>
	   	<tr align="right"><td>指輪</td><td><%=result.getType2() %></td></tr>
	   	<tr align="right"><td>ジャイアンコンサートチケット</td><td><%=result.getType3() %></td></tr>

	   </table>

		<br/>

	    <p>どこで渡したらいいと思う？</p>

 	  <table>
	   	<tr align="right"><td>教室で</td><td><%=result.getPlace1() %></td></tr>
	   	<tr align="right"><td>しずかちゃんの家で</td><td><%=result.getPlace2() %></td></tr>
	   	<tr align="right"><td>ジャイアンコンサート会場で</td><td><%=result.getPlace3() %></td></tr>

	   </table>



		<form method=post action="ExB1Input.jsp">
		    <input type="submit" value="投票に戻る"/><br />

	    </form>
  </body>
</html>