//
//  PropiaRechargeView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct PropiaRechargeView: View {
    @State var serialNumber: String = ""
    @State var moneyToSend: String = ""
    var body: some View {
        Form{
            Section{
            TextField("Número de serie", text: $serialNumber)
            TextField("Monto de la recarga", text: $moneyToSend)
            }
            Button("Recargar"){
                print("recargado")
            }
        }.navigationTitle("Recargar Propia")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct PropiaRechargeView_Previews: PreviewProvider {
    static var previews: some View {
        PropiaRechargeView()
    }
}
