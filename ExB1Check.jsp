<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>
<%@ page import="Sample.ExB1Answer"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">

<%
  ExB1Answer answer = new  ExB1Answer();

  if (session.getAttribute("answer") != null) {
		answer = (ExB1Answer) session.getAttribute("answer");
	}

%>

</head>
<body>



	<p>何をプレゼントしたらいいと思う？</p>
	<% switch(answer.getType()){
			case 1:
				out.println("ケーキ");
				break;
			case 2:
				out.println("指輪");
			 	break;
			case 3:
				out.println("ジャイアンコンサートチケット");
				break;
	 }
	 %>

	<br />

	<p>どこで渡したらいいと思う？</p>
	<% switch(answer.getPlace()){
			case 1:
				out.println("教室で");
				break;
			case 2:
				out.println("しずかちゃんの家で");
			 	break;
			case 3:
				out.println("ジャイアンコンサート会場で");
				break;
	 }
	 %><br />

	<p>あなたの名前を教えてください。</p>
	<%= answer.getName() %><br />

	<table>
		<tr>
			<td>
				<form method=post action="ExB1Edit.jsp">
					<input type="submit" value="まちがえた！" />
				</form>
			</td>
			<td>
				<form method=post action="ExB1RegisterServlet">
					<input type="submit" value="これでいいよ" />
				</form>
			</td>
		</tr>
	</table>



</body>
</html>