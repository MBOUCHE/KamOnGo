package com.KamOnGo.Servlet;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.KamOnGo.BD.ConduiteS;
import com.KamOnGo.BD.Station;
import com.KamOnGo.Beans.Conduite;
import com.KamOnGo.Beans.StationO;

@WebServlet("/ListStations")
public class ListStations extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ListStations() {
        super();

    }
    
    public static final String VUE="/private/list-stations.jsp";
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Station tabStation = new Station();
		request.setAttribute("stations", tabStation.recuperStations());
		
		
		this.getServletContext().getRequestDispatcher(VUE).forward(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Station tabStation = new Station();
		request.setAttribute("stations", tabStation.recuperStations());
		
		String resultat = null;
		Map<String, String> erreurs = new HashMap<String, String>();
		
		String nom_dest = request.getParameter("nom_dest");
		
		String responsable = request.getParameter("responsable");
		String color = request.getParameter("color");
		String code_commune =request.getParameter("code_commune");
		String image_station  = request.getParameter("image_station");
		String xcoord =request.getParameter("xcoord");
		String ycoord=request.getParameter("ycoord");
		String description = request.getParameter("description");
		
		try{
			validationNom_dest(nom_dest);
		}catch(Exception e){
			erreurs.put("nom_dest", e.getMessage());
		}
		
		try{
			validationResponsable(responsable);
		}catch(Exception e){
			erreurs.put("nom_dest", e.getMessage());
		}
		
		try{
			validationCode_commune(code_commune);
		}catch(Exception e){
			erreurs.put("code_commune", e.getMessage());
		}
		
		try{
			validationDescription(description);
		}catch(Exception e){
			erreurs.put("description", e.getMessage());
		}
		
		try{
			validationXY(xcoord, ycoord);
		}catch(Exception e){
			erreurs.put("xcoord",e.getMessage());
			erreurs.put("ycoord",e.getMessage());
		}
		if(erreurs.isEmpty()){
			
			StationO station = new StationO();
			station.setNom_dest(nom_dest);
			station.setType_dest("station");
			//Long resp = (Long) responsable;
			station.setResponsable((long) 1);
			station.setColor(color);
			station.setX(xcoord);
			station.setY(ycoord);
			station.setImage_station(image_station);
			station.setDescription(description);
			station.setCode_agence("null");
			station.setId_enregistreur((long) 1);
			station.setNom_dest(nom_dest);
			station.setCode_commune(code_commune);
			
			Station tabStation1 = new Station();
			
			tabStation1.ajouterStation(station);;
			
			resultat="Succès d'ajout de station.";
		}
		else{
			resultat="Échec d'ajout de station.";
		}
		
		request.setAttribute("erreurs", erreurs);
		request.setAttribute("resultat", resultat);
		
		this.getServletContext().getRequestDispatcher(VUE).forward(request,response);
		
	}
	
	private void validationNom_dest(String nom_dest) throws Exception {
		if((nom_dest != null && nom_dest.trim().length()<8) || nom_dest == null){
			throw new Exception("Le nom d'une destination contient aumoins 8 caractères.");
		}
	}
	
	private void validationCode_commune(String code_commune) throws Exception {
		if((code_commune != null && code_commune.trim().length()<17) || code_commune == null){
			throw new Exception("Le code de la commune doit contenir aumoins 17 caractères.");
		}
	}
	
	private void validationXY(String xcoord, String ycoord) throws Exception {
		if((xcoord != null && xcoord.trim().length()<8 || ycoord != null && ycoord.trim().length()<8) || (xcoord == null || ycoord == null)){
			throw new Exception("Une coordonnée contenit aumoins 8 caractères.");
		}
	}

	private void validationDescription(String description) throws Exception {
		if((description != null && description.trim().length()<17)|| (description == null)){
			throw new Exception("Donner plus de détails à la dite description.");
		}
	}
	
	private void validationResponsable(String responsable) throws Exception {
		//if(responsable == 0){
		if(responsable == "0"){
			throw new Exception("Veillez choisir un responsable de station.");
		}
	}
}