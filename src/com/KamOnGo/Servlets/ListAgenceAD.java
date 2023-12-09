package com.KamOnGo.Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.KamOnGo.BD.ConduiteS;
import com.KamOnGo.BD.Station;
import com.KamOnGo.BD.UtilisateurBD;

@WebServlet("/ListAgenceAD")
public class ListAgenceAD extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListAgenceAD() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public static final String VUE="/private/list-agences.jsp";
    String st[] = {"agence"};
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Station tabStation = new Station();
		request.setAttribute("stations", tabStation.recuperStations());
		request.setAttribute("st", st);
		
		UtilisateurBD tabU = new UtilisateurBD();
		
		request.setAttribute("users", tabU.recupererUtilisateur());
		
		ConduiteS tabConduite = new ConduiteS();
		
		request.setAttribute("conduites", tabConduite.recuperConduite());
		
		this.getServletContext().getRequestDispatcher(VUE).forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		this.getServletContext().getRequestDispatcher(VUE).forward(request,response);
	}

}
