import example.*

class Materia {
	
	var property carrera
	var property cantidadDeCreditosQueDa
	var property cupoMaximo
	var property curso
	var property listaDeEspera
	var property estudiantesInscriptos

	method cantAlumnosCursando() {return curso.size()}
	
	// method cantAlumnosEnCurso(){return curso.cantAlumnosCursando()}
		
	 method puedeCursarse(alumno)= true
	 
	 method inscribirACurso(alumno){if (self.cantAlumnosCursando() < cupoMaximo) curso.add(alumno)
	 							
	 									else listaDeEspera.add(alumno)
	 	
	 } 
	 
	 	method estudiantesInscriptosDeUnaMateria() {
		
		return 	curso	
		
		
	}

	method estudiantesEnListaDeEspera() {
		
		return listaDeEspera
		
	}	
}

class MateriaConCorrelativas inherits Materia {
	
		var property materiasCorrelativas
	
	override method puedeCursarse(alumno) { return materiasCorrelativas.all{materia => alumno.materiasAprobadas().contains(materia)}

		
	}

}


class MateriaConCreditos inherits Materia {
	
		var property creditosQueNecesita

	override method puedeCursarse(alumno) { return alumno.creditos() >= creditosQueNecesita }
	
}

class MateriaConAnioAnterior inherits Materia {
	
		var property materiasDeAniosAnteriores
	
override method puedeCursarse(alumno) { return materiasDeAniosAnteriores.all{materia => alumno.materiasAprobadas().contains(materia)}
	}
}

class MateriaAprobada inherits Materia{
		var property nota

	
}

//Punto 8 BONUS
class MateriaPorOrdenDeLlegada inherits Materia{
	
	
	 method agregarAListaDeEspera(alumno){if (not self.cantAlumnosCursando() < cupoMaximo) listaDeEspera.add(alumno)
	 							
	 								
	 	
	 } 
	}

