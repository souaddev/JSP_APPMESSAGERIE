<%@page isErrorPage="true" %><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ include file="/WEB-INF/jspf/navigation.jspf" %>
 <center>
 <h1><font color="red">Erreur...</font></h1>
 <p>Votre demande n'a pu aboutir.</p>
 <p>Merci de signaler les circonstanes de cet incident au webmaster
 <br>de ce site en lui transmettant le texte d'erreur qui suit : </p>
 <p><b><%=exception %></b></p>
 </center>
  <%@ include file="/WEB-INF/jspf/pied.jspf" %>
