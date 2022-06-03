//
//  PhonePaymentView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct PhonePaymentView: View {
    @State var billNumber:String = ""
    @State var totalPayment:Bool = true
    @State var moneyToPay:String = ""
    var body: some View {
        Form{
            
            Section{
                TextField("Identificador del servicio", text: $billNumber).keyboardType(.numberPad)
            }
            if !totalPayment {
                TextField("Monto a pagar", text: $moneyToPay).keyboardType(.decimalPad)
            }
            Toggle(isOn: $totalPayment) {
                Text("Pago total")
            }
            Button {
                print("Pagado")
            } label: {
                Text("Pagar")
            }

        }.navigationTitle(Text("Pagar teléfono"))
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct PhonePaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PhonePaymentView()
    }
}
