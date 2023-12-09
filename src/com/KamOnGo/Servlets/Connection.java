package com.KamOnGo.Servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSession;

import com.KamOnGo.BD.Station;
import com.KamOnGo.BD.UtilisateurBD;
import com.KamOnGo.Forms.ConnectionForm;
import com.KamOnGo.Objects.Utilisateur;


@WebServlet("/Connection")
public class Connection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Connection() {
        super();
        // TODO Auto-generated constructor stub
    }

    public static final String ATT_USER="utilisateur";
    public static final String ATT_FORM="form";
    public static final String ATT_SESSION_USER="sessionUtilisateur";
    
    public static final String VUE="/private/page-login.jsp";
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		UtilisateurBD tabUtl = new UtilisateurBD();
		request.setAttribute("utilisateurs", tabUtl.recupererUtilisateur());

    	/* Affichage de la page de connexion */
    	this.getServletContext().getRequestDispatcher(VUE).forward(request,response);
    }
    
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		/* Préparation de l'objet formulaire */
		
		ConnectionForm form= new ConnectionForm();
		
		/* Traitement de la requête et récupération du bean enrésultant */
		
		Utilisateur utilisateur = form.connecterUtilisateur(request);
		
		UtilisateurBD tabUtl = new UtilisateurBD();
		request.setAttribute("utilisateurs", tabUtl.recupererUtilisateur());

		
		/* Stockage du formulaire et du bean dans l'objet request*/
		request.setAttribute(ATT_FORM, form);
		request.setAttribute(ATT_USER, utilisateur);
		String email = request.getParameter("email");
		String mdp = request.getParameter("mdp");
		List<Utilisateur> tU =tabUtl.recupererUtilisateur();
		int k = 0;
		for (int i = 0; i < tU.size(); i++) {
			System.out.println(tU.get(i).getMDPUtl());
			System.out.println(mdp);
			  k++;
			  if(tU.get(i).getEmailUtl().equals(email)) {
				  
				  if(tU.get(i).getMDPUtl().equals(mdp) ) {
					  k--;
					/* Récupération de la session depuis la requête */
					HttpSession session=request.getSession();

					if(form.getErreurs().isEmpty()){
						
						session.setAttribute("nom_utl", tU.get(i).getNomUtl());
						session.setAttribute("prenom", tU.get(i).getPrenomUtl());
						session.setAttribute("email", tU.get(i).getEmailUtl());
						session.setAttribute("telephone", tU.get(i).getTelephoneUtl());
						session.setAttribute("mdp", tU.get(i).getMDPUtl());
						session.setAttribute("date_enr", tU.get(i).getEnrUtl());
						session.setAttribute("reponse", tU.get(i).getReponse());
						session.setAttribute("sexe", tU.get(i).getSexeUtl());
						session.setAttribute("derniere_conn", tU.get(i).getDern_connUtl());
						session.setAttribute("question", tU.get(i).getQuestion());
						session.setAttribute("num_cni", tU.get(i).getNum_cniUtl());
						session.setAttribute("num_permi", tU.get(i).getNum_permiUtl());
						session.setAttribute("type_chauffeur", tU.get(i).getType_chauff());
						session.setAttribute("profession", tU.get(i).getProfession());
						session.setAttribute("num_guichet", tU.get(i).getNum_guichet());
						session.setAttribute("adresse_ip", tU.get(i).getAdress_ip());
						session.setAttribute("id_agence", tU.get(i).getId_agence());
						session.setAttribute("id_station", tU.get(i).getId_station());
						session.setAttribute("quartier", tU.get(i).getQartier());
						session.setAttribute("profile", tU.get(i).getProfile());
						
						System.out.println(session.getAttribute(mdp));
						
						this.getServletContext().getRequestDispatcher("/private/index").forward(request,response);
						
					}else{
						session.setAttribute(ATT_SESSION_USER, null);
					}
					  
				  }
				  
			  }
		}


		if(k==tU.size()) {
			System.out.println(k);
			  String n_erreur = "Aucune adresse email correspondante";
			  email = request.getParameter("email");
			  request.setAttribute("email", email);
			  request.setAttribute("n_erreur", n_erreur);
			  this.getServletContext().getRequestDispatcher(VUE).forward(request,response);
		}
		
	}

}
