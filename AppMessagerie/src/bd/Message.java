package bd;

import java.util.ArrayList;

public class Message {
	private int idPersonne;
	private String sujet;
	private String text;
	
	public Message() {}
	public Message(int idPersonne,String sujet,String text) {
		this.idPersonne=idPersonne;
		this.sujet=sujet;
		this.text=text;
	}
	public int getIdPersonne() {return this.idPersonne;}
	public String getSujet() {return this.sujet;}
	public String getText() {return this.text;}
	
	public void setIdPersonne(int idPersonne) { this.idPersonne=idPersonne;}
	public void setSujet(String sujet) { this.sujet=sujet;}
	public void setTexte(String motDePasse) { this.text=text;}
	
	public String toString() {
		return "Id Personne : "+idPersonne+",sujet : "+sujet+", Text : "+text;
	}
}
