import universidad.* 

class ProfesionalesVinculados{ 
    var universidad 

    method universidad() = universidad 

    method honorariosPorHora() {
        return universidad.honorariosRecomendados()
    } 

    method provinciasDondePuedeTrabajar(){
        return #{universidad.provinciaActual()}
    }

} 

class ProfesionalesDelLitoral{
    var universidad 

    method universidad() = universidad 

    method honorariosPorHora() = 3000 
    method provinciasDondePuedeTrabajar() {
        return #{"Entre Rios", "Sante Fe", "Corrientes"}
    }   
}

class ProfesionalesLibres{
    var universidad 
    var honorariosPorHora 
    var provinciasDondePuedeTrabajar = #{}

    method universidad() = universidad 
    method honorariosPorHora() = honorariosPorHora 
    method provinciasDondePuedeTrabajar() = provinciasDondePuedeTrabajar 

}