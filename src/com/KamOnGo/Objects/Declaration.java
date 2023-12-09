package com.KamOnGo.Objects;

import java.sql.Date;

public class Declaration {
	private int id_msg;
	private String contenu;
	private Date date_msg;
	private int id_utl; 
	private String fichier_ass;
	
	public int getIdmsg() {
		return id_msg;
	}
	public void setIdmsg(int id_msg) {
		this.id_msg = id_msg;
	}
	
	
	public Date getDate_msg() {
		return date_msg;
	}
	public void setDate_msg(Date date_msg) {
		this.date_msg = date_msg;
	}
	
	
	public String getContenu() {
		return contenu;
	}
	public void setContenu(String contenu) {
		this.contenu = contenu;
	}
	
	
	public int getIdutl() {
		return id_utl;
	}
	public void setIdutl(int id_utl) {
		this.id_utl = id_utl;
	}
	
	
	public String getFicass() {
		return fichier_ass;
	}
	public void setFicass(String fichier_ass) {
		this.fichier_ass = fichier_ass;
	}
}
