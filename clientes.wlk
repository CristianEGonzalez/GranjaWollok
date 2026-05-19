import recursos.*
import granjeros.*

object ricardo{
  method esAdinerado() = true
  method quiereComprar(recursos) = recursos.all({r => r.esAptoExportacion()})
}

object mateo{
  method esAdinerado() = false
  method quiereComprar(recursos) = !clima.templado()
}