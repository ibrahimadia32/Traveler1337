//
//  reglageEmailView.swift
//  Traveler1337
//
//  Created by apprenant47 on 28/03/2022.
//

import SwiftUI

struct reglageEmailView: View {
    @State private var Email: String = ""
    var body: some View {

        Form {
            Section {
                HStack {
                    Image("Image1")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .cornerRadius(10)
                TextField("Melo.val@gmail.com", text:$Email)
                    .textContentType(.name)}
            }
            
            
            Image("mail")
                .resizable()
                .frame(width: 250, height: 250)
    }
}
}

struct reglageEmailView_Previews: PreviewProvider {
    static var previews: some View {
        reglageEmailView()
    }
}
