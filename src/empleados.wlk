object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var deuda = 0
	var dinero = 0	
		
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method gastar (cuanto){
		dinero -= cuanto
		if (dinero < 0) {
			deuda += ((-1)*dinero)
			dinero = 0
		}
	}
	
	method totalDinero(){
		return dinero
	}
		
	method totalDeuda(){
		return(deuda)
	}
	
	method cobrarSueldo(){
		if (dinero==0 and deuda > sueldo){
			deuda -= sueldo
		}
		else {
			deuda-= sueldo
			dinero = deuda *(-1)
			deuda = 0
		}
		
	}
	
	
}



object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0
	var sueldo = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo(){
		sueldo  = cantidadEmpanadasVendidas * montoPorEmpanada
			
	}
	method cobrarSueldo(){
		dinero += sueldo
	}
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}
