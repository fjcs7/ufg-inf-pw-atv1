<%@ page import="ufg_inf_pw_2016_2_atv01.calculadora_de_imc.*"%>
<% 	CalculaImc calculadora = new CalculaImc(
									Double.parseDouble(request.getParameter("altura")),
									Double.parseDouble(request.getParameter("peso"))); %>

<html>
  	<body>
		<% out.println(" O Imc retornado � " + calculadora.RetornaImcCalculado().toString()); %>
		<% if( request.getParameter("altura") == ""){
			 %> � nulo Jovem <%
			} else {
				out.println("Altura: " + request.getParameter("altura"));
			}
		%>

	</body>
</html>
