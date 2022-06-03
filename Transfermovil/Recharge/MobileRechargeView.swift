//
//  MobileRechargeView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct MobileRechargeView: View {
    @State var typeOfRecharge: Int = 1
    @State var mobileNumber: String = ""
    @State var moneyToSend: String = ""
    var body: some View {
        Form{
            Section{
            Picker("Tipo de recarga", selection: $typeOfRecharge) {
                Text("Recarga desde tarjeta en CUP").tag(1)
                Text("Recarga desde tarjeta en MLC").tag(2)
            }
            TextField("Número de teléfono", text: $mobileNumber)
            TextField("Monto de la recarga", text: $moneyToSend)
            }
            Button("Recargar"){
                print("recargado")
            }
        }.navigationTitle("Recargar móvil")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct MobileRechargeView_Previews: PreviewProvider {
    static var previews: some View {
        MobileRechargeView()
    }
}
