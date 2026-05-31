import universidad.* 

class ProfesionalVinculado{ 
    var universidad 

    method universidad() = universidad 

    method honorariosPorHora() {
        return universidad.honorariosRecomendados()
    } 

    method provinciasDondePuedeTrabajar(){
        return #{universidad.provinciaActual()}
    }

} 

class ProfesionalDelLitoral{
    var universidad 

    method universidad() = universidad 

    method honorariosPorHora() = 3000 
    method provinciasDondePuedeTrabajar() {
        return #{"Entre Rios", "Sante Fe", "Corrientes"}
    }   
}

class ProfesionalLibre{
    var universidad 
    var honorariosPorHora 
    var provinciasDondePuedeTrabajar = #{}

    method universidad() = universidad 
    method honorariosPorHora() = honorariosPorHora 
    method provinciasDondePuedeTrabajar() = provinciasDondePuedeTrabajar 

}