//
//  ContentView.swift
//  Transfermovil
//
//  Created by Víctor on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Sesión")){
                    Text("Autenticarse")
                    Text("Cerrar sesion")
                }
                Section(header: Text("Operaciones")){
                    Text("Transferencia")
                    Text("Pagar Electricidad")
                    Text("Pagar Teléfono")
                    Text("Pagar la ONAT")
                    Text("Pagar el Agua")
                    Text("Pagar gas")
                    Text("Giro postal")
                    Text("Pagar multa")
                }
                
                Section(header: Text("Recargar")){
                    Text("Recargar móvil")
                    Text("Recargar Nauta")
                    Text("Recargar JovenClub")
                    Text("Recargar propia")
                    Text("Pagar cuota de Nauta Hogar")
                    Text("Pagar deuda de Nauta Hogar")
                }
                
                Section(header: Text("Consultas")){
                    Text("Consultar saldo")
                    Text("Consultar servicios")
                    Text("Últimas operaciones")
                    Text("Consultar límite de tarjeta")
                    Text("Consultar todas las cuentas")
                    Text("Consultar giro postal")
                    Text("Consultar tipo de cambio")
                    Text("Consultar ONAT")
                }
                Section(header: Text("Configuración")){
                    Text("Cambio de límite de tarjeta")
                    Text("Registrarse")
                    Text("Eliminar registro")
                    Text("RServicios contratados")
                    Text("Últimos pagos")
                    Text("Amortizar crédito")
                    Text("Información de tarjeta")
                    Text("Cambiar clave")
                    Text("Cambio de PIN multibanca")
                }
                Section(header: Text("Información")){
                    Text("Ayuda")
                    Text("Acerca de")
                }
                
            }
            .navigationTitle("Transfermóvil")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
