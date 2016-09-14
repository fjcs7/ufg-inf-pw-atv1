<%
	if (alturaValida(request.getParameter("altura"))){
		%><div class="alert alert-danger" role="alert">Informe uma altura válida.</div><%
	}
	
%>
<%!	
	public boolean alturaValida(String alturaStr){
		alturaStr = (alturaStr==null || alturaStr==""? "0.0" : alturaStr);
		Double alturaDbl = 0.0;
		try {
			alturaDbl = Double.parseDouble(alturaStr);
		} catch (Exception e) {
			return false;
		}
		return true;
	}
	public void validaDados(String alturaStr, String pesoStr, Boolean validar){	
			if (validar==true){ 
					Double alturaDbl = 0.0;
		   			try {
		     			alturaDbl = Double.parseDouble(alturaStr);
		   			} catch (Exception e) {
						
		   			}
					//if (alturaDbl==0.0) out.println("<div class=''alert alert-danger'' role=''alert''>Informe uma altura diferente de zero.</div>");
		
		    		Double pesoDbl = 0.0;
		    		try {
		      			pesoDbl = Double.parseDouble(pesoStr);
		  			} catch (Exception e) {
						//out.println("<div class=''alert alert-danger'' role=''alert''>Informe um peso válido.</div>");
		    		}
					//if (pesoDbl==0.0) out.println("<div class=''alert alert-danger'' role=''alert''>Informe um peso diferente de zero.</div>");
				}
		}
 %>