//
//  WaterPaymentView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct WaterPaymentView: View {
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
                    Text("Anticipo").tag(3)
                }
                if selectedPaymentType == 3 {
                    TextField("Importe", text: $moneyToPay)
                }
                
            }
            Button {
                print("Pagado")
            } label: {
                Text("Pagar")
            }

        }.navigationTitle(Text("Pagar agua"))
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct WaterPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        WaterPaymentView()
    }
}
