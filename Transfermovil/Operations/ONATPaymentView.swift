//
//  ONATPaymentView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct ONATPaymentView: View {
    @State var billNumber:String = ""
    var body: some View {
        Form{
            Section{
                TextField("ID de la factura", text: $billNumber)
            }
            Button {
                print("Pagado")
            } label: {
                Text("Pagar")
            }

        }.navigationTitle(Text("Pagar ONAT"))
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ONATPaymentView_Previews: PreviewProvider {
    static var previews: some View {
        ONATPaymentView()
    }
}
