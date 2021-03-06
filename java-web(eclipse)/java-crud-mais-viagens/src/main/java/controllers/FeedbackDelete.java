package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FeedbackDao;

/**
 * Servlet implementation class FeedbackDelete
 */
@WebServlet("/FeedbackApagar")
public class FeedbackDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FeedbackDelete() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int feedbackId = Integer.parseInt(request.getParameter("feedbackId"));
		FeedbackDao.delete(feedbackId);
		
		FeedbackCreateAndFind feedbackCreateAndFind = new FeedbackCreateAndFind();
		feedbackCreateAndFind.doGet(request, response);
	}


}
