//
//  ContentView.swift
//  Transfermovil
//
//  Created by Víctor on 2/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var selectedBank: Int = 1
    @State var logoutAlert: Bool = true
    
    
    var body: some View {
        NavigationView{
            
            Form{
                Picker("Banco", selection: $selectedBank) {
                    Text("BANDEC").tag(1)
                    Text("BPA").tag(2)
                    Text("Banco Metropolitano").tag(3)
                }
                                
                Section(header: Text("Sesión")){
                    NavigationLink {
                        AuthView(selectedBank:self.selectedBank)
                    } label: {
                        Label("Autenticarse", systemImage: "person")
                    }
                    Button {
                        let logoutNumber = "*444*70#"
                        callNumber(phoneNumber: logoutNumber)
                        print("Sesión cerrada")
                    } label: {
                        Label("Cerrar sesion", systemImage: "xmark.circle")
                    }.foregroundColor(.red)

                    
                }
                Section(header: Text("Operaciones")){
                    NavigationLink {
                        TransferView()
                    } label: {
                        Label("Transferencia", systemImage: "creditcard")
                    }
                    NavigationLink {
                        ElectricityPaymentView()
                    } label: {
                        Label("Pagar Electricidad", systemImage: "lightbulb")
                    }
                    NavigationLink {
                        PhonePaymentView()
                    } label: {
                        Label("Pagar Teléfono", systemImage: "phone")
                    }
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
                    NavigationLink {
                        ServicesQuery()
                    } label: {
                        Label("Consultar servicios", systemImage: "list.bullet")
                    }
                    Button {
                        callNumber(phoneNumber: "*444*46#")
                    } label: {
                        Label("Consultar saldo", systemImage: "dollarsign.circle")
                    }
                    Button {
                        callNumber(phoneNumber: "*444*48#")
                    } label: {
                        Label("Últimas operaciones", systemImage: "list.number")
                    }
                    Button {
                        callNumber(phoneNumber: "*444*62#")
                    } label: {
                        Label("Consultar límite de tarjeta", systemImage: "creditcard.trianglebadge.exclamationmark")
                    }
                    Button {
                        callNumber(phoneNumber: "*444*58#")
                    } label: {
                        Label("Consultar todas las cuentas", systemImage: "list.bullet.below.rectangle")
                    }
                    Button {
                        callNumber(phoneNumber: "*444*65#")
                    } label: {
                        Label("Consultar giro postal", systemImage: "mail.and.text.magnifyingglass")
                    }
                    Button {
                        callNumber(phoneNumber: "*444*85#")
                    } label: {
                        Label("Consultar tipo de cambio", systemImage: "arrow.2.squarepath")
                    }
                    Button {
                        // *444*56*RC05#
                        callNumber(phoneNumber: "*444*85#")
                    } label: {
                        Label("Consultar ONAT", systemImage: "book")
                    }
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
                
            }.symbolVariant(.fill)
            .navigationTitle("Transfermóvil")
            
            
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
