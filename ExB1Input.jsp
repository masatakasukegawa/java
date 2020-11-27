<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="true"%>
<%@ page import="Sample.ExB1Answer"%>
<!DOCTYPE html>
<html lang="ja">

  <head><meta charset="UTF-8"></head>
  <body>
 <p> アンケート入力ページ</p>

    <form method=post action="ExB1SaveServlet">
	   <p> 何をプレゼントしたらいいと思う？</p>
			<input type="radio" name="type" value="1"/>ケーキ<br/>
			<input type="radio" name="type" value="2"/>指輪<br/>
			<input type="radio" name="type" value="3"/>ジャイアンコンサートチケット<br/>
		<br/>
	    <p>どこで渡したらいいと思う？</p>
			<input type="radio" name="place" value="1"/>教室で<br/>
			<input type="radio" name="place" value="2"/>しずかちゃんの家で<br/>
			<input type="radio" name="place" value="3"/>ジャイアンコンサート会場で<br/>
		<br/>
		<p>あなたの名前を教えてください。</p>
		    <input type="text" name="name" /><br />

		    <input type="submit" value="確認するよ～" />
    </form>

  </body>
</html>