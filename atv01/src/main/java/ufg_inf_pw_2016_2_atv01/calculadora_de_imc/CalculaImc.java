package ufg_inf_pw_2016_2_atv01.calculadora_de_imc;

public class CalculaImc {
	private Double altura;
	private Double peso;
	
	public CalculaImc(Double altura, Double peso){
		this.altura = altura;
		this.peso =  peso;
	}
	
	public Double RetornaImcCalculado(){
		
		return peso/(altura*altura) ;
	}

}
