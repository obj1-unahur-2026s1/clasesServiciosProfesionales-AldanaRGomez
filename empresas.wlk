import universidad.* 
import profesionales.* 

class EmpresaDeServicio{
    const profesionalesContratados = [] 
    var honorarioDeReferencia = 400 

    method contratar(unProfesional){
        profesionalesContratados.add(unProfesional)
    }

    method profesionalesQueEstudiaronEn(unaUniversidad){
        return profesionalesContratados.count({ p => p.universidad() == unaUniversidad})
    } 

    method universidadesFormadoras(){
        return profesionalesContratados.map({ p => p.universidad()}).asSet()
    } 

    method profesionalesCaros(){
        return profesionalesContratados.filter({p => p.honorariosPorHora() > honorarioDeReferencia})
    } 

    method profecionalMasBarato() {
        return profesionalesContratados.min({p => p.honorariosPorHora()})
    } 

    method esDeGenteAcotada(){
        return profesionalesContratados.all({p => p.provinciasDondePuedeTrabajar().size() <= 3})
    }
}