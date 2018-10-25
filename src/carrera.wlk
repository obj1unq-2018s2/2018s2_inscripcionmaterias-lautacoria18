import materia.*
import example.*
class Carrera {
	var property materias
	
	
	 method materiasQueSePuedeInscribir(alumno){
	 	
	 	 return if (alumno.carrerasCursando().contains(self)) materias.filter{materia => materia.puedeCursarse(alumno)}.asList()
	 	 else{}
	 	//if (alumno.carrerasCursando().contains(self))/ /
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
	
	

