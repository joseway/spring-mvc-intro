package com.adaming.web.models;

public class Produit {
	private String nom;
	private double prix;
	private String description;
	
	public Produit() {
		super();
	}
	public Produit(String nom, double prix, String description) {
		super();
		this.nom = nom;
		this.prix = prix;
		this.description = description;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}
