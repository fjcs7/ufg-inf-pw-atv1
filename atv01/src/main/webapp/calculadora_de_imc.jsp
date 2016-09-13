<%@ page import="ufg_inf_pw_2016_2_atv01.calculadora_de_imc.*"%>
<% 	CalculaImc calculadora = new CalculaImc(1.73,88.5); %>

<html>
  	<body>
		<% out.println(" O Imc retornado é " + calculadora.RetornaImcCalculado().toString()); %>
		<% out.println("${param.altura}"); %>
		<% out.println("${param.peso}"); %>
		<% out.println("${param.sexo}"); %>
	</body>
</html>
