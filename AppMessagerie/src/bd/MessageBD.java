package bd;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MessageBD {
	Connection con;
	public List<Message> getAllMessage(){
			List<Message> listMessages=new ArrayList<>();
			con=Connect.getConnect();
	        String req="Select * From Message";
	        try {
	            PreparedStatement ps= con.prepareStatement(req);
	            ResultSet res=ps.executeQuery();
	            while(res.next()) {
	            	Message c=new Message(res.getInt("idPersonne"),res.getString("sujet"),res.getString("text"));
	            	listMessages.add(c);
	            }
	        } catch (SQLException e) {
	        	e.printStackTrace();
	        }
			return listMessages;
		}
}
