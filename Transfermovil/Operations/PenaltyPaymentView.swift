//
//  PenaltyPaymentView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct PenaltyPaymentView: View {
    @State var penaltyID:String = ""
    @State var personID:String = ""
    @State var moneyToPay:String = ""
    @State var currency:Int = 1
    var body: some View {
        Form{
            Section {
                TextField("ID de la multa", text: $penaltyID)
                TextField("Carnet de identidad", text: $personID)
                
                TextField("Monto",text: $moneyToPay)
                Picker("Moneda", selection: $currency) {
                    Text("CUP").tag(1)
                    Text("USD").tag(2)
                    
                }
            }
            Button {
                print("Pagado")
            } label: {
                Text("pagar")
            }
            
        }.navigationTitle("Pagar multa")
            .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct PenaltyPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        PenaltyPaymentView()
    }
}
