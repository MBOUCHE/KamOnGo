package com.KamOnGo.BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
//import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.KamOnGo.Objects.Utilisateur;;

public class UtilisateurBD {

	private Connection connexion = null;
	
	public List<Utilisateur> recupererUtilisateur(){
		List<Utilisateur> utilisateurs = new ArrayList<Utilisateur>();
			
			Statement statement = null;
			ResultSet resultat = null;
			
			loadDatabase();
			
			try {
				
				statement = connexion.createStatement();
				
				resultat = statement.executeQuery("SELECT * FROM `utilisateur` ;");
		
			while(resultat.next()) {

				Long id_utl = resultat.getLong("id_utl");
				String nom_utl = resultat.getString("nom_utl");
				String prenom = resultat.getString("prenom");
				String email = resultat.getString("email");
				String telephone = resultat.getString("telephone");
				String mot_de_pass = resultat.getString("mot_de_passe");
				String date_enregistrement = resultat.getString("date_enregistrement");
				String reponse = resultat.getString("reponse");
				String sexe = resultat.getString("sexe");
				String dern_conn = resultat.getString("derniere_conn");
				String question = resultat.getString("question");
				String num_cni = resultat.getString("num_cni");
				String num_permi = resultat.getString("num_permi");
				String type_chauffeur = resultat.getString("type_chauffeur");
				String profession = resultat.getString("profession");
				String num_guichet = resultat.getString("num_guichet");
				String adresse_ip = resultat.getString("adresse_ip");
				String id_agence = resultat.getString("id_agence");
				String id_station = resultat.getString("id_station");
				String quartier = resultat.getString("quartier");
				String profile = resultat.getString("profile");
				
				Utilisateur utilisateur = new Utilisateur();
				
				utilisateur.setIdUtl(id_utl);
				utilisateur.setNomUtl(nom_utl);
				utilisateur.setPrenomUtl(prenom);
				utilisateur.setEmailUtl(email);
				utilisateur.setTelephoneUtl(telephone);
				utilisateur.setMDPUtl(mot_de_pass);
				utilisateur.setEnrUtl(date_enregistrement);
				utilisateur.setReponse(reponse);
				utilisateur.setSexeUtl(sexe);
				utilisateur.setDern_connUtl(dern_conn);
				utilisateur.setQuestion(question);
				utilisateur.setNum_permiUtl(num_permi);
				utilisateur.setNum_cniUtl(num_cni);
				utilisateur.setType_chauff(type_chauffeur);
				utilisateur.setAdress_ip(adresse_ip);
				utilisateur.setQartier(quartier);
				utilisateur.setProfession(profession);
				utilisateur.setNum_guichet(num_guichet);
				utilisateur.setId_agence(id_agence);
				utilisateur.setId_station(id_station);
				utilisateur.setProfile(profile);
				
				
				utilisateurs.add(utilisateur);
			}
			
		} catch (SQLException e){
			System.out.println(e);
		} finally {
			try {
				if(resultat != null) {
					resultat.close();
				}
				if(statement != null) {
					statement.close();
				}
				if(connexion != null) {
					connexion.close();
				}
			} catch (SQLException igonre) {}
		}
		if(utilisateurs.isEmpty()) {
			System.out.println ("Aucune Utilisateur n'a été trouvé");
		}
		return utilisateurs ;
	}

	private void loadDatabase() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e){ System.out.println(e); }
		try{
				connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/kamongo?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDateTimeCode=false&serverTimezone=UTC", "root", "");
		} catch (SQLException e) { e.printStackTrace(); }
	}
	
	public void ajouterStation(Utilisateur utilisateur) {
		loadDatabase();
		try {
			PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO destination(id_utl, nom_utl, premon, email, telephone, mot_de_passe, date_enregistrement, reponse, sexe, derniere_conn, question, num_cni, num_permi, type_chauffeur, profession, num_guichet, adresse_ip, quartier, id_agence, id_station, profile) VALUE(null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			preparedStatement.setString(1, utilisateur.getNomUtl());
			preparedStatement.setString(2, utilisateur.getPrenomUtl());
			preparedStatement.setString(3, utilisateur.getEmailUtl());
			preparedStatement.setString(4, utilisateur.getTelephoneUtl());
			preparedStatement.setString(5, utilisateur.getMDPUtl());
			preparedStatement.setString(6, utilisateur.getEnrUtl());
			preparedStatement.setString(7, utilisateur.getReponse());
			preparedStatement.setString(8, utilisateur.getSexeUtl());
			preparedStatement.setString(9, utilisateur.getDern_connUtl());
			preparedStatement.setString(10, utilisateur.getQuestion());
			preparedStatement.setString(11, utilisateur.getNum_cniUtl());
			preparedStatement.setString(12, utilisateur.getNum_permiUtl());
			preparedStatement.setString(13, utilisateur.getType_chauff());
			preparedStatement.setString(14, utilisateur.getProfession());
			preparedStatement.setString(15, utilisateur.getNum_guichet());
			preparedStatement.setString(16, utilisateur.getAdress_ip());
			preparedStatement.setString(17, utilisateur.getQartier());
			preparedStatement.setString(18, utilisateur.getId_agence());
			preparedStatement.setString(19, utilisateur.getId_station());
			preparedStatement.setString(20, utilisateur.getProfile());
			
			preparedStatement.executeUpdate();
			System.out.println(preparedStatement.executeUpdate());
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

