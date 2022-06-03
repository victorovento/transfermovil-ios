//
//  AuthView.swift
//  Transfermovil
//
//  Created by Víctor on 2/6/22.
//

import SwiftUI

struct AuthView: View {
    @State var privateKey: String = ""
    @State var selectedBank: Int = 1
    var body: some View {
        VStack{
            Form{

                    SecureField("Introduce tu clave", text: $privateKey).keyboardType(.numberPad)
                    Button {
                        if selectedBank == 1 {
                            print("Bank is bandec")
                        }
                        if selectedBank == 2 {
                            print("Bank is bpa")
                        }
                        if selectedBank == 3 {
                            print("Bank is bm")
                        }
                    } label: {
                        Text("Acceder")
                    }


            }
            
        }.navigationTitle("Autenticarse")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
