import materia.*
import carrera.*
class Estudiante {
	var property carrerasCursando
	var property materiasAprobadas
	var property materiasInscripto
	var property creditos
	
	
	
	
	
	method puedeCursarMateria(materia){
		
		return carrerasCursando.contains(materia.carrera()) and not self.laTieneAprobada(materia) and not self.estaInscriptoEn(materia)
		//self.esDeLaCarrera(materia) //
		////return not(materiasAprobadas.contains(materia))and (materiasInscripto.contains(materia)) 
					//			and carrerasCursando.contains(materia.carrera()) 
						//		and materia.puedeCursarse(self)		
		
		
	}
	//Metodos adicionales
	method esDeLaCarrera(materia){
		
				return carrerasCursando.any{carrera => carrera == materia.carrera()} 
		
	}
	
	method laTieneAprobada(materia) {
		
		return materiasAprobadas.any{materiaAprobada => materiaAprobada ==  materia}
		
	}
	
	method estaInscriptoEn(materia) {
		
		 return materiasInscripto.any{materiaInscripto => materiaInscripto ==  materia}
		
	}
	
	///////
	
	method aproboMateria(materiaAprobada) {
		
		materiasAprobadas.add(materiaAprobada).asSet()
			
	}
	
	method inscribirseACursoDeMateria(materia) {
		
		if (materia.PuedeCursarse(self)) materia.inscribirACurso(self)
	}
	
	method abandonarMateria(materia) {
		
		materia.curso().remove(self)
		if (materia.listaDeEspera().size() > 0)	//AGREGAR NOT IS EMPTY!!!!!
		materia.curso().add(materia.listaDeEspera().head())
		materia.listaDeEspera().remove(materia.listaDeEspera().head())
		
	}
}






