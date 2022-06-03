//
//  GasPaymentView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct GasPaymentView: View {
    @State var billNumber:String = ""
    @State var atmID:String = ""
    @State var selectedPaymentType:Int = 1
    @State var moneyToPay:String = ""
    var body: some View {
        Form{
            Section{
                TextField("ID del cajero", text: $billNumber)
                Picker("Tipo de pago", selection: $selectedPaymentType) {
                    Text("Deuda total").tag(1)
                    Text("Deuda parcial").tag(2)
                }
            }
            Button {
                print("Pagado")
            } label: {
                Text("Pagar")
            }
            
        }.navigationTitle(Text("Pagar gas"))
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct GasPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        GasPaymentView()
    }
}
