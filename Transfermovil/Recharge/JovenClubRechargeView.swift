//
//  JovenClubRechargeView.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct JovenClubRechargeView: View {
    @State var username: String = ""
    @State var clientID: String = ""
    @State var moneyToSend: String = ""
    var body: some View {
        Form{
            Section{
            TextField("Nombre de usuario", text: $username)
            TextField("Carnet de identidad", text: $clientID)
            TextField("Monto en CUP", text: $moneyToSend)
            }
            Button("Recargar"){
                print("recargado")
            }
        }.navigationTitle("Recargar JovenClub")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct JovenClubRechargeView_Previews: PreviewProvider {
    static var previews: some View {
        JovenClubRechargeView()
    }
}
