package com.KamOnGo.BD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.KamOnGo.Beans.StationO;


public class Station {
	
	private Connection connexion = null;

	public List<StationO> recuperStations(){
	
		List<StationO> stations = new ArrayList<>();
		
		Statement statement = null;
		ResultSet resultat = null;
		
		loadDatabase();
		
		
		try {
			
			statement = connexion.createStatement();
			
			resultat = statement.executeQuery("SELECT * FROM destination;");
			
			while(resultat.next()) {
				Long id_dest = resultat.getLong("id_dest");
				Long id_interne = resultat.getLong("id_interne");
				String nom_dest = resultat.getString("nom_dest");
				String type_dest = resultat.getString("type_dest");
				String color = resultat.getString("color");
				String code_commune = resultat.getString("code_commune");
				String image_station = resultat.getString("image_station");
				Long id_enregistreur = resultat.getLong("id_enregistreur");
				Long responsable = resultat.getLong("responsable");
				String xcoord = resultat.getString("logitude");
				String ycoord = resultat.getString("latitude");
				String description = resultat.getString("description");
				String code_agence = resultat.getString("code_agence");
				
				StationO station = new StationO();
				station.setId_dest(id_dest);
				station.setNom_dest(nom_dest);
				station.setType_dest(type_dest);
				station.setColor(color);
				station.setCode_commune(code_commune);
				station.setImage_station(image_station);
				station.setX(xcoord);
				station.setY(ycoord);
				station.setResponsable(responsable);
				station.setId_enregistreur(id_enregistreur);
				station.setDescription(description);
				station.setCode_agence(code_agence);
				station.setId_interne(id_interne);
				
				stations.add(station);
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
		if(stations.isEmpty()) {
			System.out.println ("Aucune station n'a été trouvée");
		}
		return stations;
	}

	private void loadDatabase() {

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e){ System.out.println(e); }
		try{
				connexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/kamongo?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDateTimeCode=false&serverTimezone=UTC", "root", "");
		} catch (SQLException e) { e.printStackTrace(); }
	}
	
	public void ajouterStation(StationO station) {
		loadDatabase();
		try {
			PreparedStatement preparedStatement = connexion.prepareStatement("INSERT INTO destination(nom_dest, type_dest, responsable, color, code_commune, code_agence, id_enregisteur, longitude, latitude, images_station, description) VALUE(?, ?, ?, ?, ?, ?, ?, ?, ?, ?);");
			preparedStatement.setString(1, station.getNom_dest());
			preparedStatement.setString(2, station.getType_dest());
			preparedStatement.setLong(3, station.getResponsable());
			preparedStatement.setString(4, station.getColor());
			preparedStatement.setString(5, station.getCode_commune());
			preparedStatement.setString(6, station.getCode_agence());
			preparedStatement.setLong(7, station.getId_enregistreur());
			preparedStatement.setString(8, station.getY());
			preparedStatement.setString(9, station.getX());
			preparedStatement.setString(10, station.getImage_station());
			preparedStatement.setString(11, station.getDescription());
			preparedStatement.setLong(12, station.getId_interne());
			
			preparedStatement.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
