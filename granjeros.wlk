import recursos.*
object ana{
  const recursosGestionados = [gallina, manzano]
  const recursosTrabajados = []
  var dinero = 0

  method dinero() = dinero

  method trabajar(unRecurso){
    if(self.tieneRecurso(unRecurso)){
      recursosTrabajados.add(unRecurso)
    }
  }

  method tieneRecurso(unRecurso) = recursosGestionados.contains(unRecurso)

  method venderA(unCliente){
    if(unCliente.quiereComprar(recursosTrabajados))
      dinero = dinero + if(unCliente.esAdinerado()) self.precioDeVenta() else self.precioDeVenta()*0.9  
  }

  method precioDeVenta() = recursosTrabajados.sum({r => r.unidades()})

  method adquirir(unRecurso){
    if(unRecurso.esAptoExportacion() && !self.tieneRecurso(unRecurso)){
      recursosGestionados.add(unRecurso)
    }
  }
}

object carlos{
  const recursosGestionados = [vaca]
  const recursosTrabajados = []
  var dinero = 0
  var recargoDeVenta = 0

  method dinero() = dinero

  method trabajar(unRecurso){
    if(self.tieneRecurso(unRecurso)){
      recursosTrabajados.add(unRecurso)
    }
  }

  method tieneRecurso(unRecurso) = recursosGestionados.contains(unRecurso)

  method venderA(unCliente){
    if(unCliente.quiereComprar(recursosTrabajados))
    dinero = dinero + self.precioDeVenta()
  }

  method precioDeVenta() = recursosTrabajados.sum({r => r.unidades()}) + recargoDeVenta

    method adquirir(unRecurso){
    if(!self.tieneRecurso(unRecurso)){
      recursosGestionados.add(unRecurso)
      recargoDeVenta += 20
    }
  }
}