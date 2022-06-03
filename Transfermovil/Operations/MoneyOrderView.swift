//
//  MoneyOrderView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct MoneyOrderView: View {
    @State var ownerID:String = ""
    @State var receiverID:String = ""
    @State var moneyToTransfer:String = ""
    @State var transferReason:Int = 1
    @State var mobileNumber:String = ""
    var body: some View {
        Form{
            Section{
                TextField("CI del propietario", text: $ownerID)
                TextField("CI del beneficiario", text: $receiverID)
                TextField("Monto en CUP", text: $moneyToTransfer)
                Picker("Motivo del giro", selection: $transferReason) {
                    Text("Ayuda a estudiante").tag(1)
                    Text("Pensión alimenticia").tag(2)
                    Text("Ayuda económica").tag(3)
                    Text("Solidario").tag(4)
                    Text("Otros").tag(5)
                }
                TextField("Móvil a confirmar", text: $mobileNumber)
            }
            Button {
                print("Enviado")
            } label: {
                Label("Enviar", systemImage: "arrow.up.circle.fill")
            }

        }.navigationBarTitle("Giro postal")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MoneyOrderView_Previews: PreviewProvider {
    static var previews: some View {
        MoneyOrderView()
    }
}
