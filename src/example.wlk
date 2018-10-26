import materia.*
import carrera.*
class Estudiante {
	var property carrerasCursando
	var property materiasAprobadas
	var property materiasInscripto
	var property creditos
	
	
	
	method promedioDeEstudiante(){
		
		return materiasAprobadas.sum { materia => materia.nota() } / materiasAprobadas.size()
		
		
	}
	
	method puedeCursarMateria(materia){
		
		return  not self.laTieneAprobada(materia) and not self.estaInscriptoEn(materia) and materia.puedeCursarse(self)	
		and carrerasCursando.contains(materia.carrera())

		
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
		if (not materia.listaDeEspera().isEmpty())
		materia.curso().add(materia.listaDeEspera().head())
		materia.listaDeEspera().remove(materia.listaDeEspera().head())
		
	}
}






