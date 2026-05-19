object vaca {
    var estaHambrienta = false
    
    method unidades() = if (estaHambrienta) 15 else 30
    method esAptoExportacion() = !estaHambrienta
    
    method saciar() { estaHambrienta = false }
    method darHambre() { estaHambrienta = true }
}

object gallina {
    var alimento = maiz
    
    method unidades() = alimento.unidadesQueOtorga()
    method esAptoExportacion() = self.unidades() > 10
    
    method cambiarAlimento(nuevo) { alimento = nuevo }
}

object maiz {
    method unidadesQueOtorga() = 10
}

object trigo {
    method unidadesQueOtorga() = if (clima.templado()) 12 else 8
}

object espinacas{
    method unidadesQueOtorga() = trigo.unidadesQueOtorga() + maiz.unidadesQueOtorga()
}

object clima{
    var templado = true
    method templado() = templado

    method llegaElFrio() { templado = false }
    method seTempla() { templado = true }
}

object manzano {
    method unidades() = 20
    method esAptoExportacion() = !clima.templado()
}