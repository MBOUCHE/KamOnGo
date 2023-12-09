package com.KamOnGo.Forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.KamOnGo.Objects.Utilisateur;


public final class ConnectionForm {
	private static final String CHAMP_EMAIL="email";
	private static final String CHAMP_PASS="mdp";
	private String resultat;
	
	public ConnectionForm() {
		// TODO Auto-generated constructor stub
	}
	private Map<String,String> erreurs= new HashMap<String,String>();
	
	public String getResultat(){
		return resultat;
	}
	public Map<String,String> getErreurs(){
		return erreurs;
	}
	public Utilisateur connecterUtilisateur(HttpServletRequest request ){
		/* Récupération des champs du formulaire */
		String email= getValeurChamp(request,CHAMP_EMAIL);
		String mdp= getValeurChamp(request,CHAMP_PASS);
		
		Utilisateur utilisateur = new Utilisateur();
		/* Validation du champ email. */
		try{
			validationEmail(email);
		}
		catch(Exception e){
			setErreur(CHAMP_EMAIL,e.getMessage());
		}
		
		utilisateur.setEmailUtl(email);
		/* Validation du champ mot de passe. */
		try{
			validationMotDePasse(mdp);}
		catch(Exception e){
			setErreur(CHAMP_PASS, e.getMessage());
		}
		
		utilisateur.setMDPUtl(mdp);
		/* Initialisation du résultat global de la validation. */
		
		
		return utilisateur;
	}
	
	/*** Valide l'adresse email saisie.*/
	private void validationEmail(String email) throws Exception{
		if(email!=null && !email.matches("([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)")){ throw new Exception(
				"Merci de saisir une adresse mailvalide.");
		}
	}
		
	/*** Valide le mot de passe saisi.*/
	private void validationMotDePasse(String mdp)throws Exception{
		if(mdp!=null){
			if(mdp.length()<5){
				throw new Exception("Le mot de passe doit contenir aumoins 5 caractères.");
			}
		}else{
			throw new Exception("Merci de saisir votre mot depasse.");
		}
	}
	
	/** Ajoute un message correspondant au champ spécifié à la map deserreurs.*/
	private void setErreur(String champ,String message){
		erreurs.put(champ,message);
	}
	
	/** Méthode utilitaire qui retourne null si un champ est vide, et son contenu* sinon.*/
	private static String getValeurChamp(HttpServletRequest request, String nomChamp){
		String valeur=request.getParameter(nomChamp);
		
		if(valeur==null||valeur.trim().length()==0){
			return null;
		}else{
			return valeur;
		}
	}

}
