//
//  reglagePrenomIView.swift
//  Traveler1337
//
//  Created by apprenant47 on 28/03/2022.
//

import SwiftUI

struct reglagePrenomIView: View {
   
    @State private var Prénom: String = ""
    var body: some View {
        Form {
            Section {
                HStack {
                    Image("Image3")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(10)
                TextField("Melo", text:$Prénom)
                    .textContentType(.name)}
            }
            
                Image("pnom")
                    .resizable()
                    .frame(width: 320, height: 325)
    }
    }
}

struct reglagePrenomIView_Previews: PreviewProvider {
    static var previews: some View {
        reglagePrenomIView()
    }
}
