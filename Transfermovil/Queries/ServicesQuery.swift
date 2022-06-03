//
//  ServicesQuery.swift
//  Transfermovil
//
//  Created by Víctor on 3/6/22.
//

import SwiftUI

struct ServicesQuery: View {
    var body: some View {
        Form{
            NavigationLink {
                PhoneQueryView()
            } label: {
                Label("Consultar teléfono", systemImage: "phone")
            }
            
            NavigationLink {
                ElectricityQueryView()
            } label: {
                Label("Consultar electricidad", systemImage: "lightbulb")
            }
            
        }.navigationTitle("Consultar servicios")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ServicesQuery_Previews: PreviewProvider {
    static var previews: some View {
        ServicesQuery()
    }
}
