import example.*

class Materia {
	
	var property carrera
	var property cantidadDeCreditosQueDa
	var property cupoMaximo
	var property curso
	var property listaDeEspera
	var property estudiantesInscriptos
	method cantAlumnosCursando() {return curso.lenght()}
	
	// method cantAlumnosEnCurso(){return curso.cantAlumnosCursando()}
		
	 method puedeCursarse(alumno)= true
	 
	 method inscribirACurso(alumno){if (self.cantAlumnosCursando() < cupoMaximo) curso.add(alumno)
	 							
	 									else listaDeEspera.add(alumno)
	 	
	 } 
	 
	 	method estudiantesInscriptosDeUnaMateria() {
		
		return {	self.curso()	}
		
		
	}

	method estudiantesEnListaDeEspera() {
		
		return { self.listaDeEspera()}
		
		
	}	
	
}

class MateriaConCorrelativas inherits Materia {
	
		var property materiasCorrelativas
	
	override method puedeCursarse(alumno) { return alumno.materiasAprobadas().contains(materiasCorrelativas)

	}
}

class MateriaConCreditos inherits Materia {
	
		var property creditosQueNecesita

	override method puedeCursarse(alumno) { return alumno.creditos() >= creditosQueNecesita }
	
}

class MateriaConAnioAnterior inherits Materia {
	
		var property materiasDeAniosAnteriores
	
	override method puedeCursarse(alumno) { return alumno.materiasAprobadas().contains(materiasDeAniosAnteriores)
	}
}

class MateriaAprobada inherits Materia{
	
	
	var property nota
	
//	method alumnoAproboLaMateria(alumno, materia) {
		
		
//			return {alumno.materiasAprobadas().contains(materia) }		
		
//	}
	
	
}