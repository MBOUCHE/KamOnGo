package com.KamOnGo.Beans;

import java.sql.Date;
import java.sql.Time;

public class Conduite {
	private Long id_cdr;
	private Date date_cdt;
	private int plc_libre_cdt;
	private Time date_dprt_cdt;
	private float cout_cdt;
	private Long id_chauffeur;
	private Long id_vhc;
	private Long id_dest;
	private Long id_agent;
	private String latitude;
	private String longitude;
	private String type_conduite;
	
	public Long getId_Cdt() {
		return id_cdr;
	}
	public void setId_Cdt(Long id_cdr) {
		this.id_cdr = id_cdr;
	}
	
	public Date getDate_cdt() {
		return date_cdt;
	}
	public void setDate_cdt(Date date_cdt) {
		this.date_cdt = date_cdt;
	}
	
	public int getPlc_libre_cdt() {
		return plc_libre_cdt;
	}
	public void setPlc_libre_cdt(int plc_libre_cdt) {
		this.plc_libre_cdt = plc_libre_cdt;
	}
	
	public Time getDate_dprt_cdt() {
		return date_dprt_cdt;
	}
	public void setDate_dprt_cdt(Time date_dprt_cdt) {
		this.date_dprt_cdt = date_dprt_cdt;
	}
	
	public float getCout_cdt() {
		return cout_cdt;
	}
	public void setCout_cdt(float cout_cdt) {
		this.cout_cdt = cout_cdt;
	}
	
	public Long getId_chauffeur() {
		return id_chauffeur;
	}
	public void setId_chauffeur(Long id_chauffeur) {
		this.id_chauffeur = id_chauffeur;
	}
	
	public Long getId_vhc() {
		return id_vhc;
	}
	public void setId_vhc(Long id_vhc) {
		this.id_vhc = id_vhc;
	}
	
	public Long getId_dest() {
		return id_dest;
	}
	public void setId_dest(Long id_dest) {
		this.id_dest = id_dest;
	}
	
	public Long getId_agent() {
		return id_agent;
	}
	public void setId_agent(Long id_agent) {
		this.id_agent = id_agent;
	}
	
	public String getLat() {
		return latitude;
	}
	public void setLat(String latitude) {
		this.latitude = latitude;
	}
	
	public String getLon() {
		return longitude;
	}
	public void setLon(String longitude) {
		this.longitude = longitude;
	}

	public String getType_conduite() {
		return type_conduite;
	}
	
	public void setType_conduite(String type_conduite) {
		this.type_conduite = type_conduite;
	}
}
