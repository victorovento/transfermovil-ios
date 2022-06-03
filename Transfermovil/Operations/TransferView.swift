//
//  TransferView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI
import Combine

struct TransferView: View {
    @State var account:String = ""
    @State var moneyToSend:String = ""
    @State var phoneNumber:String = ""
    
    let accountTextLimit = 16
    let moneyToSendLimit = 12
    let phoneNumberLimit = 8
    
    var body: some View {
        List{
            Section {
                TextField("Tarjeta o cuenta del destinatario", text: $account)
                    .keyboardType(.numberPad)
                    .textContentType(.creditCardNumber)
                
                TextField("Monto a transferir", text: $moneyToSend)
                    .keyboardType(.decimalPad)
  
                TextField("Número de teléfono", text: $phoneNumber)
                    .keyboardType(.numberPad)
                    
            } header: {
                Text("Transferir efectivo")
            }
            Button {
                print("Enviado")
            } label: {
                Label("Transferir", systemImage: "arrow.up.circle.fill")
            }
        }.navigationTitle(Text("Transferencia"))
            .navigationBarTitleDisplayMode(.inline)
        
    }
    
    
}


struct TransferView_Previews: PreviewProvider {
    static var previews: some View {
        TransferView()
    }
}
