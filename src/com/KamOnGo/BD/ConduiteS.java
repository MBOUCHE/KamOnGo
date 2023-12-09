package com.KamOnGo.BD;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import com.KamOnGo.Beans.Conduite;


public class ConduiteS {
	
	private Connection connexion = null;

	public List<Conduite> recuperConduite(){
	
		List<Conduite> conduites = new ArrayList<>();
		
		Statement statement = null;
		ResultSet resultat = null;
		
		loadDatabase();
		
		
		try {
			
			statement = connexion.createStatement();
			
			resultat = statement.executeQuery("SELECT * FROM conduire;");
			
			while(resultat.next()) {
				Long id_cdr = resultat.getLong("id_cdr");
				Date date_cdt = resultat.getDate("date_cdt");
				int plc_libre_cdt = resultat.getInt("plc_libre_cdt");
				Time date_dprt_cdt = resultat.getTime("date_dprt_cdt");
				float cout_cdt = resultat.getFloat("cout_cdt");
				Long id_chauffeur = resultat.getLong("id_chauffeur");
				Long id_vhc = resultat.getLong("id_vhc");
				
				String lat = resultat.getString("lat");
				String lon = resultat.getString("lon");
				
				Long id_agent = resultat.getLong("id_agent");
				Long id_dest = resultat.getLong("id_dest");
				String type_conduite = resultat.getString("type_conduite");
				
				Conduite conduite = new Conduite();
				
				conduite.setId_Cdt(id_cdr);
				conduite.setDate_cdt(date_cdt);
				conduite.setPlc_libre_cdt(plc_libre_cdt);
				conduite.setDate_dprt_cdt(date_dprt_cdt);
				conduite.setCout_cdt(cout_cdt);
				conduite.setId_chauffeur(id_chauffeur);
				conduite.setId_vhc(id_vhc);
				conduite.setLat(lat);
				conduite.setLon(lon);
				conduite.setId_agent(id_agent);
				conduite.setId_dest(id_dest);
				conduite.setType_conduite(type_conduite);
				
				conduites.add(conduite);
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
		if(conduites.isEmpty()) {
			System.out.println ("Aucune programmation n'a été trouvée");
		}
		return conduites;
	}

	private void loadDatabase() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e){ System.out.println(e); }
		try{
				connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/kamongo?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDateTimeCode=false&serverTimezone=UTC", "root", "");
		} catch (SQLException e) { e.printStackTrace(); }
	}
	
	public void ajouterConduite(Conduite conduite) {
		loadDatabase();
		try {
			PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO destination(date_cdt, plc_libre_cdt, date_dprt_cdt, cout_cdt, id_chauffeur, id_vhc, longitude, latitude, id_agent, id_dest) VALUE(?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			preparedStatement.setDate(1, conduite.getDate_cdt());
			preparedStatement.setInt(2, conduite.getPlc_libre_cdt());
			preparedStatement.setTime(3, conduite.getDate_dprt_cdt());
			preparedStatement.setFloat(4, conduite.getCout_cdt());
			preparedStatement.setLong(5, conduite.getId_chauffeur());
			preparedStatement.setLong(6, conduite.getId_vhc());
			preparedStatement.setString(7, conduite.getLon());
			preparedStatement.setString(8, conduite.getLat());
			preparedStatement.setLong(9, conduite.getId_agent());
			preparedStatement.setLong(10, conduite.getId_dest());
			preparedStatement.setString(12, conduite.getType_conduite());
			
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
