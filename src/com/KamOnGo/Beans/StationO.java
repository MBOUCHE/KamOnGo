package com.KamOnGo.Beans;

public class StationO {
	private Long id_dest;
	private String nom_dest;
	private String type_dest;
	private Long responsable;
	private String color;
	private String code_commune;
	private String code_agence;
	private Long id_enregistreur;
	private String longitude;
	private String latitude;
	private String image_station;
	private String description;
	private Long id_interne;
	
	public Long getId_dest() {
		return id_dest;
	}
	public void setId_dest(Long id_dest) {
		this.id_dest = id_dest;
	}
	
	public String getNom_dest() {
		return nom_dest;
	}
	public void setNom_dest(String nom_dest) {
		this.nom_dest = nom_dest;
	}

	public String getType_dest() {
		return type_dest;
	}
	public void setType_dest(String type_dest) {
		this.type_dest = type_dest;
	}
	
	public Long getResponsable() {
		return responsable;
	}
	public void setResponsable(Long responsable) {
		this.responsable = responsable;
	}
	
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public String getCode_commune() {
		return code_commune;
	}
	public void setCode_commune(String code_commune) {
		this.code_commune = code_commune;
	}
	
	public String getCode_agence() {
		return code_agence;
	}
	public void setCode_agence(String code_agence) {
		this.code_agence = code_agence;
	}
	
	public Long getId_enregistreur() {
		return id_enregistreur;
	}
	public void setId_enregistreur(Long id_enregistreur) {
		this.id_enregistreur = id_enregistreur;
	}
	
	public String getY() {
		return longitude;
	}
	public void setY(String longitude) {
		this.longitude = longitude;
	}
	
	public String getX() {
		return latitude;
	}
	public void setX(String latitude) {
		this.latitude = latitude;
	}
	
	public String getImage_station() {
		return image_station;
	}
	public void setImage_station(String image_station) {
		this.image_station = image_station;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public Long getId_interne() {
		return id_interne;
	}
	public void setId_interne(Long id_interne) {
		this.id_interne = id_interne;
	}
	
}
