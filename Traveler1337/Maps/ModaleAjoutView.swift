//
//  ModaleAjoutView.swift
//  Traveler1337
//
//  Created by apprenant47 on 30/03/2022.
//

import SwiftUI

import MapKit

struct ModaleAjoutView: View {
    @ObservedObject var tableauSDF: TableauSDF

    @State private var nom : String = ""
    @State private var image : String = ""
    @State private var text1 : String = ""
    @State private var text2 : String = ""
    @State private var text3 : String = ""
    @State private var text4 : String = ""
    @State private var position = CLLocationCoordinate2D(latitude: 48.8588897, longitude: 2.320041)
    var body: some View {
        VStack{
            
            Image("pnom")
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
            
            
            
            Text("Ajouter une personne")
                .bold()
                .padding()
            
            ZStack{
            Rectangle()
                    .foregroundColor(Color("mauve"))
                    .frame(width: 350, height: 60)
                    .cornerRadius(25)
        TextField("name", text: $nom)
                .padding()
                .frame(width: 300, height: 50)
            }
            
            ZStack{
            Rectangle()
                    .foregroundColor(Color("mauve"))
                    .frame(width: 350, height: 60)
                    .cornerRadius(25)
        TextField("image",text: $image)
                .padding()
                .frame(width: 300, height: 50)
            }
                
              
            ZStack{
            Rectangle()
                    .foregroundColor(Color("mauve"))
                    .frame(width: 350, height: 60)
                    .cornerRadius(25)
                
        TextField("Biographie",text: $text1)
                .padding()
                .frame(width: 300, height: 50)
            }
            
            ZStack{
            Rectangle()
                    .foregroundColor(Color("mauve"))
                    .frame(width: 350, height: 60)
                    .cornerRadius(25)
        TextField("Addresse",text: $text2)
                .padding()
                .frame(width: 300, height: 50)
            }
            
            ZStack{
            Rectangle()
                    .foregroundColor(Color("mauve"))
                    .frame(width: 350, height: 60)
                    .cornerRadius(25)
        TextField("Besoin",text: $text3)
                .padding()
                .frame(width: 300, height: 50)
            }
            Button {
                tableauSDF.listSDF.append(SDF(position: position, nom: nom, image: image, text1: text1, text2:text2, text3: text3, text4: "Nourriture"))
                
                
             
                
                
            } label: {
                Text("Ajouter")
                    .frame(width: 250, height: 50)
                    .background(.purple)
                    .cornerRadius(50)
                    .foregroundColor(.white)
                
            }

        }
    
    }
}

struct ModaleAjoutView_Previews: PreviewProvider {
    static var previews: some View {
        ModaleAjoutView(tableauSDF: TableauSDF())
    }
}
