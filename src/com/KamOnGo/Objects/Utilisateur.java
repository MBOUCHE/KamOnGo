package com.KamOnGo.Objects;


import javax.servlet.http.HttpServletRequest;

public class Utilisateur {
	private Long id_utl;
	private String nom_utl;
	private String prenom;
	private String email;
	private String mot_de_pass;
	private String telephone;
	private String sexe;
	private String date_enr;
	private String dern_conn;
	private String num_cni;
	private String num_permi;
	private String profession;
	private String id_station;
	private String reponse;
	private String question;
	private String type_chauff;
	private String quartier;
	private String adress_ip;
	private String num_guichet;
	private String id_agence;
	private String profile;
	
	public Long getIdUtl() {
		return id_utl;
	}
	public void setIdUtl(Long id_utl) {
		this.id_utl = id_utl;
	}
	
	
	public String getNomUtl() {
		return nom_utl;
	}
	public void setNomUtl(String nom_utl) {
		this.nom_utl = nom_utl;
	}
	
	
	public String getPrenomUtl() {
		return prenom;
	}
	public void setPrenomUtl(String prenom) {
		this.prenom = prenom;
	}
	
	
	public String getEmailUtl() {
		return email;
	}
	public void setEmailUtl(String email) {
		this.email = email;
	}
	
	
	public String getMDPUtl() {
		return mot_de_pass;
	}
	public void setMDPUtl(String mot_de_pass) {
		this.mot_de_pass = mot_de_pass;
	}
	
	
	public String getTelephoneUtl() {
		return telephone;
	}
	public void setTelephoneUtl(String telephone) {
		this.telephone = telephone;
	}
	
	
	public String getSexeUtl() {
		return sexe;
	}
	public void setSexeUtl(String sexe) {
		this.sexe = sexe;
	}
	
	
	public String getEnrUtl() {
		return date_enr;
	}
	public void setEnrUtl(String date_enregistrement) {
		this.date_enr = date_enregistrement;
	}
	
	
	public String getDern_connUtl() {
		return dern_conn;
	}
	public void setDern_connUtl(String dern_conn) {
		this.dern_conn = dern_conn;
	}
	
	
	public String getNum_cniUtl() {
		return num_cni;
	}
	public void setNum_cniUtl(String num_cni) {
		this.num_cni = num_cni;
	}
	
	
	public String getNum_permiUtl() {
		return num_permi;
	}
	public void setNum_permiUtl(String num_permi) {
		this.num_permi = num_permi;
	}
	
	
	public String getId_station() {
		return id_station;
	}
	public void setId_station(String id_station) {
		this.id_station = id_station;
	}
	
	public String getClientIp(HttpServletRequest request) {

        String remoteAddr = "";

            remoteAddr = request.getHeader("X-FORWARDED-FOR");
            if (remoteAddr == null || "".equals(remoteAddr)) {
                remoteAddr = request.getRemoteAddr();
            }

        return remoteAddr;
    }
	
	public String getReponse() {
		return reponse;
	}
	public void setReponse(String reponse) {
		this.reponse = reponse;
	}
	
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	
	public String getType_chauff() {
		return type_chauff;
	}
	public void setType_chauff(String type_chauff) {
		this.type_chauff = type_chauff;
	}
	
	public String getQartier() {
		return quartier;
	}
	public void setQartier(String quartier) {
		this.quartier = quartier;
	}
	
	public String getAdress_ip() {
		return adress_ip;
	}
	public void setAdress_ip(String adress_ip) {
		this.adress_ip = adress_ip;
	}
	
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	
	public String getNum_guichet() {
		return num_guichet;
	}
	public void setNum_guichet(String num_guichet) {
		this.num_guichet = num_guichet;
	}
	
	public String getId_agence() {
		return id_agence;
	}
	public void setId_agence(String id_agence) {
		this.id_agence = id_agence;
	}
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	
}

