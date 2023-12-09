package com.KamOnGo.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.KamOnGo.BD.UtilisateurBD;

@WebServlet("/ListUtilisateurs")
public class ListUtilisateurs extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListUtilisateurs() {
        super();
    }

    public static final String VUE="/private/list-utilisateur.jsp";
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UtilisateurBD tabU = new UtilisateurBD();
		request.setAttribute("users", tabU.recupererUtilisateur());
		
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
