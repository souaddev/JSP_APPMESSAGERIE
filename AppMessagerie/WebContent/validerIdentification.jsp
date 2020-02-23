 <%@ page errorPage="WEB-INF/erreur.jsp" %>
 <%@ include file="WEB-INF/jspf/navigation.jspf" %>
	<h1 align="center">Confirmation de votre demande d'identification : </h1>
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
	<%PersonneBD p=new PersonneBD();
	if(p.TrouverPersonne(utilisateur)==false) {%>
	<font color="red">Attention : Nom ou mot de passe est incorrect !!</font>
	<%
	}
	else { 
	%>
	<font color="green">Bien connecté</font>
	<%
	}%>
	</h3>
	
	</jsp:useBean>
<%@ include file="WEB-INF/jspf/pied.jspf" %>