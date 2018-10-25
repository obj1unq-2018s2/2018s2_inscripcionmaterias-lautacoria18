import materia.*
import example.*
class Carrera {
	var property materias
	
	
	 method materiasQueSePuedeInscribir(alumno){
	 	
	 	 if (alumno.carrerasCursando().contains(self)) materias.filter{materia => materia.puedeCursarse(alumno)}
	 	
	 	
	 }
	 
	 method materiasQueEstaInscripto(alumno){
	 	
	 	return alumno.materiasInscripto()
	 }
	 
	 
	 method materiasEnLaQueEspera(alumno) {
	 	
	 	
	 	
	 	return self.materiasQueEstaInscripto(alumno).filter{materia => materia.listaDeEspera().contains(alumno)}
	 	
	 	
	 }
	 
	 
	 method estaEnListaDeEspera(alumno) {
	 	
	 	
	 	return self.materiasQueEstaInscripto(alumno).filter{materia => materia.listaDeEspera().contains(alumno)}
	 }
	 

}
	
	

