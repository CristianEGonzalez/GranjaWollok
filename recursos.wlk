object vaca {
    var estaHambrienta = false
    
    method unidades() = if (estaHambrienta) 15 else 30
    method esAptoExportacion() = !estaHambrienta
    
    method saciar() { estaHambrienta = false }
    method darHambre() { estaHambrienta = true }
}

object gallina {
    var alimento = maiz
    
    method unidades() = alimento.unidadesProducidas()
    method esAptoExportacion() = self.unidades() > 9
    
    method cambiarAlimento(nuevo) { alimento = nuevo }
}

// Objetos de configuración para la gallina
object maiz {
    method unidadesProducidas() = 10
}

object cereales {
    method unidadesProducidas() = if (clima.esSoleado()) 12 else 8
}

object clima{
    var soleado = true
    method esSoleado() = soleado

    method saleElSol() { soleado = true }
    method seNubla() { soleado = false }
}

object manzano {
    method unidades() = 20
    method esAptoExportacion() = true
}