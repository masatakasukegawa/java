

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Sample.ExB1Answer;
import Sample.ExB1Result;

@WebServlet(urlPatterns = { "/ExB1RegisterServlet" })
public class ExB1RegisterServet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doMain(req,resp);
	}

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doMain(req,resp);
	}

	protected void doMain(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		HttpSession session = req.getSession();


		  ExB1Answer answer = new  ExB1Answer();

		  if (session.getAttribute("answer") != null) {
				answer = (ExB1Answer) session.getAttribute("answer");
			}


		  ExB1Result result = new  ExB1Result();

		  if (session.getAttribute("result") != null) {
				result = (ExB1Result) session.getAttribute("result");
			}

		  switch(answer.getType()){
			case 1:
				result.setType1(result.getType1()+1);
				break;
			case 2:
				result.setType2(result.getType2()+1);
				break;
			case 3:
				result.setType3(result.getType3()+1);
				break;
		  }

		  switch(answer.getPlace()){
			case 1:
				result.setPlace1(result.getPlace1()+1);
				break;
			case 2:
				result.setPlace2(result.getPlace2()+1);
			 	break;
			case 3:
				result.setPlace3(result.getPlace3()+1);
				break;
		  }
//		answer.setType(type);
//		answer.setPlace(place);
//		answer.setName(name);

		session.setAttribute("result", result);


		req.getRequestDispatcher("/ExB1Thankyou.jsp").forward(req, resp);
	}
}
