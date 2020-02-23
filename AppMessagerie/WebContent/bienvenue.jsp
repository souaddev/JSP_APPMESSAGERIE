<%@ page errorPage="WEB-INF/erreur.jsp" %>
<%@ include file="WEB-INF/jspf/navigation.jspf" %>
<font face="Arial">
<p><table border="1" cellpadding="3" cellspacing="2" width="90%" align="center">
	<tr bgcolor="FF6600">
		<th>Sujet</th>
		<th>Message</th>
	</tr>
	<%MessageBD message=new MessageBD();
	List<Message> listMessages=message.getAllMessage();
	for(Message i:listMessages){
		int ligne=0;
	%>
	<tr bgcolor="<%=ligne++ % 2 == 0 ? "#FFFF66" : "#FFCC00" %>" >
		<td><b><%=i.getSujet()%></b></td>
		<td><%=i.getText() %></td>
	</tr>
	<%} %>
	</table></p>	
</font> 
<%@ include file="WEB-INF/jspf/pied.jspf" %>