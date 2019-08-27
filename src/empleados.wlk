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
	
	method cobrarSueldo(){ //aca hay que corregirr
		dinero += sueldo
	}
	
	
}



object baigorria {
	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
}

object gimenez {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { 
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo(empleado.sueldo()) //aca tambien
	}
}
