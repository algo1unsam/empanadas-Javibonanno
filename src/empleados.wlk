object gimenez {

	var property sueldo = 15000
	var sueldoCobrado = 0

	method totalCobrado() {
		return sueldoCobrado
	}

	method cobrarSueldo() {
		sueldoCobrado += sueldo
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	var property deuda = 0
	var property dinero = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada

	// ¿este es un método de órden o de consulta?
	// si es de consulta, debería devolver algo sin modificar nada
	// si es órden, hace algo, realiza modificaciones pero no devuelve nada
	method totalCobrado() {
		dinero += self.sueldo()
		return dinero
	}

	method gastar(unDinero) {
		if (dinero < unDinero) {
			deuda += unDinero - dinero
			dinero = 0
		} else {
			dinero -= unDinero
			// no puede ser que tuviera deuda?
			// es decir, si bien este gasto lo puede afrontar, 
			// no puede ser que la haya quedado una dedua de antes??
			deuda = 0
		}
	}

	// con hacer return dinero no alcanza??
	// el if por qué? no vale el valor guardado así como está?
	// si dinero está en 0, devuelve 0
	method totalDinero() {
		if (dinero > 0) {
			return dinero
		} else return 0
	}

	method totalDeuda() {
		return deuda
	}

	method pagarDeuda() {
		if (self.totalDeuda() > dinero) {
			deuda -= dinero
			dinero = 0
		} else {
			dinero -= deuda
			deuda = 0
		}
	}

}

object galvan {

	var property dinero = 300000

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
	}

}

