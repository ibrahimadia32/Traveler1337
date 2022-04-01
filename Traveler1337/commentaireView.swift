//
//  commentaireView.swift
//  Traveler1337
//
//  Created by apprenant47 on 24/03/2022.
//

import SwiftUI

struct commentaireView: View {
    @State private var commentaire : String = ""
    var body: some View {
        VStack {
            HStack{

                Image("image comm")
                .resizable()
                .frame(width: 390, height:350)
                .padding()

            }

                Spacer()

            ZStack{
                HStack{
                    Text("🙁")
                        .font(.title)
                        .frame(width: 55, height:20)
                    Text("😞")
                        .font(.title)
                        .frame(width: 55, height:20)
                    Text("🙂")
                        .font(.title)
                        .frame(width: 55, height:20)
                    Text("😃")
                        .font(.title)
                        .frame(width: 55, height:20)}
            }

            ZStack{
                Rectangle()
                    .cornerRadius(55)
                    .padding()
                    .frame(width: 400, height:200)
                    .foregroundColor(Color("bleuclaire"))
                Text(" Commentaire...")}

            Spacer()

            ZStack { Button {
                //
            } label: {
                Text("Envoyer")
                    .padding()
                    .frame(width: 150, height:50)
                    .foregroundColor(.black)
                    .background(Color("bleuclaire"))
                    .cornerRadius(65)

            }

    }
            Spacer()
                .padding(40)
}
    }
}

struct TesteView_Previews: PreviewProvider {
    static var previews: some View {
        commentaireView()
    }
}
