 <%@ page errorPage="WEB-INF/erreur.jsp" %>
 <%@ include file="WEB-INF/jspf/navigation.jspf" %>

	<h3 align="center">Demande d'inscription : </h3>
	<form action="validerutilisateurBD.jsp" method="POST">
	<p>
	<table border="1" cellpadding="3" cellspacing="2" width="90%" align="center">
		<tr>
			<td bgcolor="#FF9900" width="100"><b>Prenom</b></td>
			<td><input type="text" name="prenom"></td><br>
		</tr>
		<tr>
			<td bgcolor="#FF9900" width="100"><b>Nom</b></td>
			<td><input type="text" name="nom"></td><br>
		</tr>
		<tr>
			<td bgcolor="#FF9900" width="100"><b>Mot de passe</b></td>
			<td><input type="password" name="motDePasse"><br></td>
		</tr>
	</table></p>
		<p align="center" ><input type="submit" value="Nouvel utilisateur"></p>
	</form>
 <%@ include file="WEB-INF/jspf/pied.jspf" %>