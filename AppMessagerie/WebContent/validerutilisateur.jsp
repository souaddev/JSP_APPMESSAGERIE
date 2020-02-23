 <%@ page errorPage="WEB-INF/erreur.jsp" %>
 <%@ include file="WEB-INF/jspf/navigation.jspf" %>
	<h1 align="center">Confirmation de votre demande d'inscription : </h1>
	<jsp:useBean id="utilisateur" class="bd.Personne">
	<jsp:setProperty name="utilisateur" property="*" />
	<p>
	<table border="1" cellpadding="3" cellspacing="2" width="90%" align="center">
		<tr>
			<td bgcolor="#FF9900" width="100"><b>Nom</b></td>
			<td><jsp:getProperty name="utilisateur" property="nom"/></td>
		</tr>
		
		<tr>
			<td bgcolor="#FF9900" width="100"><b>Prenom</b></td>
			<td><jsp:getProperty name="utilisateur" property="prenom" /></td>
		</tr>
		
		<tr>
			<td bgcolor="#FF9900" width="100"><b>Mot de passe</b></td>
			<td><jsp:getProperty name="utilisateur" property="motDePasse" /></td>
		</tr>
	</table>
	<h3 align="center">
	<%if(utilisateur.enregistrer()==false) {%>
	<font color="red">Attention : Utilisateur déja enregistré</font>
	<%
	}
	else { 
	%>
	<font color="green">Nouvel utilisateur enregistré</font>
	<%
	}%>
	</h3>
	<p><%for (Personne i : Personne.list){
		System.out.println(i.toString());
	}
	%></p>
	</jsp:useBean>
<%@ include file="WEB-INF/jspf/pied.jspf" %>