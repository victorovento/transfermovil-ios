//
//  ContentView.swift
//  Transfermovil
//
//  Created by Víctor on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedBank: String = "BANDEC"
    
    var body: some View {
        NavigationView{
            List{
                Picker(selection: /*@START_MENU_TOKEN@*/.constant(1)/*@END_MENU_TOKEN@*/, label: Text("Banco")) {
                    Text("BANDEC").tag(1)
                    Text("BPA").tag(2)
                    Text("Banco Metropolitano").tag(3)
                }
                Section(header: Text("Sesión")){
                    Label("Autenticarse", systemImage: "person")
                    Label("Cerrar sesion", systemImage: "delete.left")
                }
                Section(header: Text("Operaciones")){
                    Label("Transferencia", systemImage: "creditcard")
                    Label("Pagar Electricidad", systemImage: "lightbulb")
                    Label("Pagar Teléfono", systemImage: "phone")
                    Label("Pagar la ONAT", systemImage: "book.closed")
                    Label("Pagar el Agua", systemImage: "drop")
                    Label("Pagar gas", systemImage: "flame")
                    Label("Giro postal", systemImage: "mail")
                    Label("Pagar multa", systemImage: "list.bullet.rectangle")
                }
                
                Section(header: Text("Recargar")){
                    Label("Recargar móvil", systemImage: "iphone")
                    Label("Recargar Nauta", systemImage: "network")
                    Label("Pagar cuota de Nauta Hogar", systemImage: "network")
                    Label("Pagar deuda de Nauta Hogar", systemImage: "network")
                    Label("Recargar JovenClub", systemImage: "pc")
                    Label("Recargar propia", systemImage: "phone.down")
                }
                
                Section(header: Text("Consultas")){
                    Label("Consultar saldo", systemImage: "dollarsign.circle")
                    Label("Consultar servicios", systemImage: "list.bullet")
                    Label("Últimas operaciones", systemImage: "list.number")
                    Label("Consultar límite de tarjeta", systemImage: "creditcard.trianglebadge.exclamationmark")
                    Label("Consultar todas las cuentas", systemImage: "list.bullet.below.rectangle")
                    Label("Consultar giro postal", systemImage: "mail.and.text.magnifyingglass")
                    Label("Consultar tipo de cambio", systemImage: "arrow.2.squarepath")
                    Label("Consultar ONAT", systemImage: "book")
                }
                Section(header: Text("Configuración")){
                    Label("Cambio de límite de tarjeta", systemImage: "creditcard.trianglebadge.exclamationmark")
                    Label("Registrarse", systemImage: "person.badge.plus")
                    Label("Eliminar registro", systemImage: "person.badge.minus")
                    Label("Servicios contratados", systemImage: "list.number")
                    Label("Últimos pagos", systemImage: "list.bullet.rectangle.portrait")
                    Label("Amortizar crédito", systemImage: "banknote")
                    Label("Información de tarjeta", systemImage: "creditcard")
                    Label("Cambiar clave", systemImage: "creditcard.and.123")
                    Label("Cambio de PIN multibanca", systemImage: "123.rectangle")
                }
                Section(header: Text("Información")){
                    Label("Ayuda", systemImage: "questionmark.circle")
                    Label("Acerca de", systemImage: "info.circle")
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
