import granjeros.*
import recursos.*
import clientes.*

object cooperativa {
    const granjeros = [ana, carlos]
    const loteDeRecursos = [vaca, gallina, manzano]
    const clientes = [ricardo, mateo]

    method conseguir(unRecurso){
      loteDeRecursos.add(unRecurso)
    }
    method desechar(unRecurso){
      loteDeRecursos.remove(unRecurso)
    }

    method prepararJornada() {
        vaca.saciar()
        gallina.cambiarAlimento(espinacas)
        self.asignarRecurso(manzano)
    }
    
    method asignarRecurso(recurso) {
        granjeros.forEach({ granjero => granjero.adquirir(recurso) })
    }
    
    method jornadaLaboral(unRecurso, otroRecurso) {
        granjeros.forEach({
          granjero =>
            granjero.trabajar(unRecurso)
            granjero.trabajar(otroRecurso)
        })
    }
    
    method feriaAgricola(){
      granjeros.forEach({g => g.venderA(clientes.first())})
    }
    
    method hayGranjeroLegendario() = granjeros.any({ granjero => granjero.dinero() > 1000 })
    
    method reporteProduccion() = loteDeRecursos.map({ recurso => recurso.unidades() })

    method hayTerrateniente() = clientes.any({ g => g.quiereComprar(loteDeRecursos) })

    method granjerosQueTienen(recurso) = granjeros.filter({ g => g.tieneRecurso(recurso) })
    method trabajadorRural(recurso) = self.granjerosQueTienen(recurso).min({ g => g.dinero() })

    method balance(recurso) = self.granjerosQueTienen(recurso).sum({ g => g.dinero() })
}