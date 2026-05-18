import recursos.*

object ana {
    const recursosGestionados = [gallina, manzano]
    var unidadesAcumuladas = 0
    
    method unidadesAcumuladas() = unidadesAcumuladas
    
    method conoceRecurso(recurso) = recursosGestionados.contains(recurso)
    
    method puedeTrabajar(recurso) = self.conoceRecurso(recurso)
    
    method trabajar(recurso) {
        if (self.puedeTrabajar(recurso)) {
            unidadesAcumuladas += self.calcularProduccion(recurso)
        }
    }
    
    method calcularProduccion(recurso) = 
        if (recurso.esAptoExportacion()) recurso.unidades() * 3 
        else recurso.unidades() / 2

    method aprenderRecurso(recurso) {
        if (recurso.esAptoExportacion() && !self.conoceRecurso(recurso)) {
            recursosGestionados.add(recurso)
        }
    }
}

object beto {
    const recursosGestionados = [vaca, gallina]
    var unidadesAcumuladas = 0
    var tractorFunciona = true
    
    method unidadesAcumuladas() = unidadesAcumuladas
    
    method conoceRecurso(recurso) = recursosGestionados.contains(recurso)
    
    method puedeTrabajar(recurso) = 
        recursosGestionados.size() >= 2 && self.conoceRecurso(recurso)
    
    method trabajar(recurso) {
        if (self.puedeTrabajar(recurso)) {
            unidadesAcumuladas += recurso.unidades() + self.bonusTractor()
        }
    }

    method bonusTractor() = if (tractorFunciona) 10 else 0

    method romperTractor(){
      tractorFunciona = false
    }

    method arreglarTractor(){
      tractorFunciona = true
    }
    
    method aprenderRecurso(recurso) {
        if (!self.conoceRecurso(recurso)) {
            recursosGestionados.add(recurso)
        }
    }
}

object carlos {
    var recursoActual = vaca
    var unidadesAcumuladas = 0
    var cantidadAyudantes = 5

    method cantidadAyudantes() = cantidadAyudantes
    
    method unidadesAcumuladas() = unidadesAcumuladas
    
    method conoceRecurso(recurso) = recurso == recursoActual
    
    method puedeTrabajar(recurso) = 
        cantidadAyudantes.even() && unidadesAcumuladas < 500 && self.conoceRecurso(recurso)
    
    method trabajar(recurso) {
        if (self.puedeTrabajar(recurso)) {
            unidadesAcumuladas += recurso.unidades() + (cantidadAyudantes * 2)
        }
    }
    
    method aprenderRecurso(nuevoRecurso) {
        if (!self.conoceRecurso(nuevoRecurso)) {
            recursoActual = nuevoRecurso
            cantidadAyudantes += 1
        }
    }
}