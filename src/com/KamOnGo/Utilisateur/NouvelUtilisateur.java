package com.KamOnGo.Utilisateur;


import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.KamOnGo.BD.UtilisateurBD;
import com.KamOnGo.Objects.Utilisateur;

@WebServlet("/NouvelUtilisateur")
public class NouvelUtilisateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public static String VUE = "/private/page-register.jsp";
	public static final int TAILLE_TAMPON = 123456;
	public static final String CHEMIN_FICHIERS = "c:/KamOnGo/";
       
    public NouvelUtilisateur() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Utilisateur utilisateur = new Utilisateur();
		
		String nom_utl = request.getParameter("nom_utl");
		String prenom = request.getParameter("prenom");
		String email = request.getParameter("email");
		String telephone = request.getParameter("telephone");
		String mdp = request.getParameter("mdp");
		String cmdp = request.getParameter("cmdp");
		String sexe = request.getParameter("sexe");
		String quartier = request.getParameter("quartier");
		String profession = request.getParameter("profession");
		String question = request.getParameter("question");
		String reponse = request.getParameter("reponse");
		String num_cni = request.getParameter("num_cni");
		String id_agence = request.getParameter("id_agence");
		String id_station = request.getParameter("id_station");
		String num_permi = request.getParameter("num_permi");
		String type_chauffeur = request.getParameter("type_chauffeur");
		String num_guichet = request.getParameter("num_guichet");
		String adresse_ip = request.getParameter("adresse_ip");
		
	    LocalDateTime date_enr = LocalDateTime.now();
	    
	    DateTimeFormatter date_enregistrementObject = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");

	    String date_enregistrement = date_enr.format(date_enregistrementObject);
	    String dern_conn = date_enr.format(date_enregistrementObject);

//		request.setAttribute( "nom_utl", nom_utl);
//		request.setAttribute("prenom", prenom);
//		request.setAttribute("email", email);
//		request.setAttribute("telephone", telephone);
//		request.setAttribute("mdp", mdp);
//		request.setAttribute("sexe", sexe);
//		request.setAttribute("quartier", quartier);
//		request.setAttribute("profession", profession);
//		request.setAttribute("question", question);
//		request.setAttribute("reponse", reponse);
//		request.setAttribute("num_cni", num_cni);

		Part part = request.getPart("fichier");
		String nomFichier = getNomFichier(part);
		String profile = nomFichier;
		
		if (nomFichier != null && !nomFichier.isEmpty()) {
			String nomChamp = part.getName();
			nomFichier = nomFichier.substring(nomFichier.lastIndexOf('/') + 1).substring(nomFichier.lastIndexOf('\\') + 1);
			ecrireFichier(part, nomFichier, CHEMIN_FICHIERS);
			request.setAttribute(nomChamp, nomFichier);
		}
		
		utilisateur.setNomUtl(nom_utl);
		utilisateur.setPrenomUtl(prenom);
		utilisateur.setEmailUtl(email);
		utilisateur.setTelephoneUtl(telephone);
		utilisateur.setMDPUtl(mdp);
		utilisateur.setSexeUtl(sexe);
		utilisateur.setQartier(quartier);
		utilisateur.setProfession(profession);
		utilisateur.setQuestion(question);
		utilisateur.setReponse(reponse);
		utilisateur.setNum_cniUtl(num_cni);
		utilisateur.setProfile(profile);
		utilisateur.setId_agence(id_agence);
		utilisateur.setId_station(id_station);
		utilisateur.setEnrUtl(date_enregistrement);
		utilisateur.setDern_connUtl(dern_conn);
		utilisateur.setType_chauff(type_chauffeur);
		utilisateur.setNum_permiUtl(num_permi);
		utilisateur.setNum_guichet(num_guichet);
		utilisateur.setAdress_ip(adresse_ip);
		
		
		UtilisateurBD utl = new UtilisateurBD();
		
		utl.ajouterStation(utilisateur);
		
		this.getServletContext().getRequestDispatcher(VUE).forward(request, response);
		
	}
	private static  String getNomFichier(Part part) {
		for ( String contentDisposition : part.getHeader("content-disposition").split(";")) {
			if(contentDisposition.trim().startsWith("filename")) {
				return contentDisposition.substring(contentDisposition.indexOf('=') + 1).trim().replace("\"", "");
			}
		}
		return null;
	}
	
	private void ecrireFichier(Part part, String nomFichier, String chemin) throws IOException {
		BufferedInputStream entree = null;
		BufferedOutputStream sortie = null;
		//try {
			entree = new BufferedInputStream(part.getInputStream(), TAILLE_TAMPON);
			sortie = new BufferedOutputStream(new FileOutputStream(new File(chemin + nomFichier)), TAILLE_TAMPON);
			byte[] tampon = new byte[TAILLE_TAMPON];
			int longueur;
			while((longueur = entree.read(tampon)) > 0) {
				sortie.write(tampon, 0, longueur);
			}
		//} 
//		finally {
//			try {
//				sortie.close();
//			} 
//			catch (IOException ignore) {	
//			}
//			try {
//				entree.close();
//			} 
//			catch (IOException ignore) {	
//			}
//		}
	}

}
