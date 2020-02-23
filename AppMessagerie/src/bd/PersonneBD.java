package bd;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class PersonneBD {
	Connection con;
	public List<Personne> getAllPersonne(){
			List<Personne> lc=new ArrayList<>();
			con=Connect.getConnect();
	        String req="Select * From Personne";
	        try {
	            PreparedStatement ps= con.prepareStatement(req);
	            ResultSet res=ps.executeQuery();
	            while(res.next()) {
	            	Personne c=new Personne(res.getString("nom"),res.getString("prenom"),res.getString("motDePasse"));
	            	lc.add(c);
	            }
	        } catch (SQLException e) {
	        	e.printStackTrace();
	        }
			return lc;
		}
	public void addPersonne(Personne personne) {
		con=Connect.getConnect();
	        String req="INSERT into Personne(nom,prenom,motDePasse) VALUES(?,?,?)";
	        try {
	            PreparedStatement ps= con.prepareStatement(req);
	            ps.setString(1, personne.getNom());
	            ps.setString(2, personne.getPrenom());
	            ps.setString(3, personne.getMotDePasse());
	            int i=ps.executeUpdate();  
	            System.out.println(i+" records inserted");  
	
	        } catch (SQLException e) {
	        	e.printStackTrace();
	        }
	}
	
	public boolean enregistrerPersonne(Personne p) {
		List<Personne> list=new ArrayList<>();
		list=getAllPersonne();
		if(!list.isEmpty()) {
			for(Personne i :list) {
				if( (i.getNom().equals(p.getNom())) && (i.getPrenom().equals(p.getPrenom())) )
				{	return false;
				}
			}	
		}
		addPersonne(p);
		return true;
	}
	
	public boolean TrouverPersonne(Personne p) {
		List<Personne> list=new ArrayList<>();
		list=getAllPersonne();
		if(!list.isEmpty()) {
			for(Personne i :list) {
				if( (i.getNom().equals(p.getNom())) && (i.getPrenom().equals(p.getPrenom())) && (i.getMotDePasse().equals(p.getMotDePasse())) )
				{	return true;
				}
			}	
		}
		return false;
	}
}
