import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Sample.ExB1Answer;

@WebServlet(urlPatterns = { "/ExB1UpdateServlet" })
public class ExB1UpdateServlet extends HttpServlet{

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

		String str1 =req.getParameter("type");
		int type = Integer.parseInt(str1);

		String str2 =req.getParameter("place");
		int place = Integer.parseInt(str2);

		String name = req.getParameter("name");

		ExB1Answer answer = new ExB1Answer();

		answer.setType(type);
		answer.setPlace(place);
		answer.setName(name);

		session.setAttribute("answer", answer);


		req.getRequestDispatcher("/ExB1Check.jsp").forward(req, resp);
	}

}
