<!DOCTYPE html>
<html>
	<head>
		<%@ include file="header.html" %>
		<title>IMC - Cálculo do Índice de Massa Corpórea</title>
	</head>
	<body>
	<div class="container">
	  <form method="post">
		<div class="container">
		  <div class="form-group row col-md-4">
		  	<h1>Calculadora de IMC</h1>
		  	<h3>IMC - Índice de massa corpórea</h3>
		  </div>
	    </div>
		<div class="container">
		  <div class="form-group row col-md-4">
		    <label for="altura">Sua altura: </label>
		    <input type="text" class="form-control" name="altura" id="altura" placeholder="0,00">
		  </div>
	    </div>
	    <div class="container">
		  <div class="form-group row col-md-4">
		    <label for="peso">Seu Peso:</label>
		    <input type="text" class="form-control" id="peso" name="peso" placeholder="00,0">
		  </div>
	    </div>
	    <div class="container">
		  <div class="form-goup row col-md-4">
				<label for="sexo">Sexo:</label>
				<select name="sexo" id="sexo" class="form-control">
				  <option  value="M">Masculino</option>
				  <option  value="F">Feminino</option>
				</select>
		   </div>
	    </div>
	    <div class="container">
			<label class="bg-danger">Obs.: O cálculo é diferenciado para homens e mulheres.</label>
		</div>
		<%
			String Saltura = request.getParameter("altura");
			String Speso = request.getParameter("peso");
			String Ssexo = request.getParameter("sexo");

		%>
		<div class="container">
		  <button type="button" 
		  		  class="btn btn-default" 
		  		  onclick="location.href='calculadora_de_imc.jsp?altura=${Saltura}&peso=${Speso}&sexo=${Ssexo}'">Calcular</button>
		  		  <!-- onclick=CapturaDados(altura,peso,altura)>Calcular</button>  -->  
		</div> 
	  </form>
		<div class="container">
		<p></p>
		<div class="container">
			<div class="form-goup row col-md-4">
		  			<table class="table-bordered table-striped">
						<tr>
							<td>Condição</td>
							<td>IMC em Mulheres</td>
							<td>IMC em Homens</td>
						</tr>
						<tr>
						  	<td> Abaixo do peso </td>
							<td>&lt;19,1</td>
						  	<td>&lt;20,7</td>
						</tr>
						<tr>
						  	<td>Peso normal</td>
							<td>19,1&nbsp;-&nbsp;25,8</td>
							<td>20,7&nbsp;-&nbsp;26,4</td>
						</tr>
						<tr>
						  	<td>Acima do peso</td>
							<td>25,8&nbsp;-&nbsp;27,3</td>
							<td>26,4&nbsp;-&nbsp;27,8</td>
						</tr>
						<tr>
						  	<td>Acima do peso ideal</td>
							<td>27,3&nbsp;-&nbsp;32,3</td>
							<td>27,8&nbsp;-&nbsp;31,1</td>
						</tr>
						<tr>
					  		<td>Obeso</td>
							<td>&gt;32,3</td>
							<td>&gt;31,1</td>
					  	</tr>
					</table>
				</div>
		 </div> 
	    </div>
	 </div>  
	</body>
</html>