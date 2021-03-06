package controllers;

import model.Feedback;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FeedbackDao;


@WebServlet("/CreateAndFind")
public class FeedbackCreateAndFind extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public FeedbackCreateAndFind() {
        super();

    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String pesquisa = request.getParameter("pesquisa");
		
		if(pesquisa == null) {
			pesquisa = " ";
		}
		
		List<Feedback> feedbacks = FeedbackDao.find(pesquisa);
		
		request.setAttribute("feedbacks", feedbacks);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("lista.jsp");
		requestDispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Feedback feedback = new Feedback();
		
		feedback.setData(request.getParameter("data"));
		feedback.setDescricao(request.getParameter("descricao"));
		
		FeedbackDao.create(feedback);
		
		doGet(request, response);
	}

}
