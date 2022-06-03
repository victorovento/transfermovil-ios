//
//  NautaRechargeView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct NautaRechargeView: View {
    @State var username: String = ""
    @State var typeOfAccount: Int = 1
    @State var mobileNumber: String = ""
    @State var moneyToSend: String = ""
    var body: some View {
        Form{
            Section{
            TextField("Nombre de Usuario",text: $username)
                if typeOfAccount == 1 {
                    Text("@nauta.com.cu")
                }else{
                    Text("@nauta.co.cu")
                }
                
            Picker("Tipo de recarga", selection: $typeOfAccount) {
                Text("Navegación internacional").tag(1)
                Text("Navegación nacional").tag(2)
            }
            TextField("Monto de la recarga", text: $moneyToSend)
            TextField("Teléfono de confirmación", text: $mobileNumber)
            }
            Button("Recargar"){
                print("recargado")
            }
        }.navigationTitle("Recargar Nauta")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct NautaRechargeView_Previews: PreviewProvider {
    static var previews: some View {
        NautaRechargeView()
    }
}
