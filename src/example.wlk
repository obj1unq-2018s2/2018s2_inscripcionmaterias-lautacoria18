import materia.*
class Estudiante {
	var property carrerasCursando
	var property materiasAprobadas
	var property materiasInscripto
	var property creditos
	
	
	
	
	
	method puedeCursarMateria(materia){
		
		return not(materiasAprobadas.contains(materia))and not(materiasInscripto.contains(materia)) 
								and carrerasCursando.contains(materia.carrera()) 
								and materia.puedeCursarse(self)		
		
		
	}
	
	method aproboMateria(materiaAprobada) {
		
		materiasAprobadas.add(materiaAprobada).asList()
		
	}
	
	method inscribirseACursoDeMateria(materia) {
		
		if (materia.PuedeCursarse(self)) materia.inscribirACurso(self)
	}
	
	method abandonarMateria(materia) {
		
		materia.curso().remove(self)
		if (materia.listaDeEspera().size() > 0)	
		materia.curso().add(materia.listaDeEspera().head())
		materia.listaDeEspera().remove(materia.listaDeEspera().head())
		
	}
}






