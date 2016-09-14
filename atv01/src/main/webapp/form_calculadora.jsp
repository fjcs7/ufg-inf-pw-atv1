<form method="post" action="calculadora_de_imc.jsp">
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
		<div class="container">
		  <button type="submit" 
		  		  class="btn btn-default" name="btnCalcular" onclick="validaDados(alturaStr,pesoStr)">Calcular</button> 
		</div> 
</form>