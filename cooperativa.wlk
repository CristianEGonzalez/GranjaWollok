import granjeros.*
import recursos.*

object cooperativa {
    const granjeros = [ana, beto, carlos]
    const recursosDeGranja = [vaca, gallina, manzano]
    
    method prepararJornada() {
        clima.seNubla()
        vaca.saciar()
        gallina.cambiarAlimento(cereales)
    }
    
    method asignarRecurso(recurso) {
        granjeros.forEach({ granjero => granjero.aprenderRecurso(recurso) })
    }
    
    method jornadaLaboral(recurso) {
        granjeros.forEach({ granjero => granjero.trabajar(recurso) })
    }
    
    method granjeroDelMes() = granjeros.max({ granjero => granjero.unidadesAcumuladas() })
    
    method hayGranjeroLegendario() = granjeros.any({ granjero => granjero.unidadesAcumuladas() > 1000 })
    
    method reporteProduccion() = recursosDeGranja.map({ recurso => recurso.unidades() })

    method censo(recurso) = granjeros.count({ g => g.puedeTrabajar(recurso) })

    method granjerosQuePuedenTrabajar(recurso) = granjeros.filter({ g => g.puedeTrabajar(recurso) })
    method eslabonDebil(recurso) = self.granjerosQuePuedenTrabajar(recurso).min({ g => g.unidadesAcumuladas() })

    method balance(recurso) = self.granjerosQuePuedenTrabajar(recurso).map({ g => g.unidadesAcumuladas() }).sum()
}