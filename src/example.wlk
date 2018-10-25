import materia.*
import carrera.*
class Estudiante {
	var property carrerasCursando
	var property materiasAprobadas
	var property materiasInscripto
	var property creditos
	
	
	
	
	
	method puedeCursarMateria(materia){
		
		return  not self.laTieneAprobada(materia) and not self.estaInscriptoEn(materia)
		//carrerasCursando.contains(materia.carrera()) and //
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
	
	///////Punto 2
	
	method aproboMateria(materiaAprobada) {
		
		materiasAprobadas.add(materiaAprobada)
			
	}
	
	method materiasQueAprobo(){
		
		return materiasAprobadas.asSet()
		
	}
	
	//Punto 3
	
	method inscribirseACursoDeMateria(materia) {
		
		if (materia.puedeCursarse(self)) materia.inscribirACurso(self)
	}
	
	//Punto 4
	
	method abandonarMateria(materia) {
		
		materia.curso().remove(self)
		if (not materia.listaDeEspera().isEmpty())	//AGREGAR NOT IS EMPTY!!!!!
		materia.curso().add(materia.listaDeEspera().head())
		materia.listaDeEspera().remove(materia.listaDeEspera().head())
		
	}
}






