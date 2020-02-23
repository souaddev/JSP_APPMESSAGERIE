package bd;

import java.util.ArrayList;

public class Personne {
	private String nom;
	private String prenom;
	private String motDePasse;
	public static ArrayList<Personne> list=new ArrayList<Personne>();
	
	public Personne() {}
	public Personne(String nom,String prenom,String motDePasse) {
		this.nom=nom;
		this.prenom=prenom;
		this.motDePasse=motDePasse;
	}
	
	public String getNom() {return this.nom;}
	public String getPrenom() {return this.prenom;}
	public String getMotDePasse() {return this.motDePasse;}
	
	public void setNom(String nom) { this.nom=nom;}
	public void setPrenom(String prenom) { this.prenom=prenom;}
	public void setMotDePasse(String motDePasse) { this.motDePasse=motDePasse;}
	
	public boolean enregistrer() {
		if(!list.isEmpty()) {
			for(Personne i :list) {
				if( (i.getNom().equals(this.getNom())) && (i.getPrenom().equals(this.getPrenom())) )
				{	return false;
				}
			}	
		}
		list.add(this);
		return true;
	
	}
	public static void showListe() {
		for (Personne i : list) {
			i.toString();		}
	}

	public String toString() {
		return "Nom : "+nom+",Prenom : "+prenom+",Mot de passe : "+motDePasse;
	}
	
}
