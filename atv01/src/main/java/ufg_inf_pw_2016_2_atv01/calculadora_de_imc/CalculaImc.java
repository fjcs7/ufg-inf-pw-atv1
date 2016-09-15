package ufg_inf_pw_2016_2_atv01.calculadora_de_imc;

import java.math.BigDecimal;
import java.math.RoundingMode;

public class CalculaImc {
	private Double altura;
	private Double peso;
	private String sexo;
	private BigDecimal imcCalculado;
	
	public CalculaImc(Double altura, Double peso, String sexo){
		this.altura = altura;
		this.peso =  peso;
		this.sexo = sexo;
	}
	
	public BigDecimal RetornaImcCalculado(){
		imcCalculado = new BigDecimal(peso/(altura*altura)).setScale(2, RoundingMode.HALF_DOWN);
		return imcCalculado;
	}
	
	public String RetornaResultadoDaCalculadora(){
		String retorno = "";
		if (sexo.equals("F")){
			retorno = this.AvaliaDadosFemininos();
		} else {
			retorno = this.AvaliaDadosMasculinos();
		}
		return retorno;
	}
	
	private String AvaliaDadosFemininos(){
		Double imc = Double.parseDouble(imcCalculado.toString()); 
		if(imc<19.1){
			return "Abaixo do Peso";
		} else if (imc>=19.1 && imc < 25.8){
			return "Peso Normal";
		} else if (imc>=25.8 && imc < 27.3){
			return "Marginalmente acima do peso";
		} else if (imc>=27.3 && imc < 32.3){
			return "Acima do peso normal";
		} else if (imc>=32.3){
			return "Obeso";
		}
		return "";
	}
	
	private String AvaliaDadosMasculinos(){
		Double imc = Double.parseDouble(imcCalculado.toString()); 
		if(imc<20.7){
			return "Abaixo do Peso";
		} else if (imc>=20.7 && imc < 26.4){
			return "Peso Normal";
		} else if (imc>=26.4 && imc < 27.8){
			return "Marginalmente acima do peso";
		} else if (imc>=27.8 && imc < 31.1){
			return "Acima do peso normal";
		} else if (imc>=31.1){
			return "Obeso";
		}
		return "";
	}

}
