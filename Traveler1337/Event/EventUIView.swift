//
//  EventUIView.swift
//  Traveler1337
//
//  Created by apprenant47 on 23/03/2022.
//

import SwiftUI

// Ma vue principale
struct EventUIView: View {
    
    @State private var element: Element? = nil
    var body: some View {
        
        NavigationView{
           
            
            
            
            
        List(elements) { element in
            listRow(element : element)
                .onTapGesture {
                    self.element = element
                }
                
        }
        .sheet(item: $element) { element in
            VStack{
                Text(element.name)
                    .font(.title)
                    .italic()
                    .bold()
                Text(element.addresse)
                    .padding(40)
                Text(element.ouvert)
                    .padding(20)
            Image(element.img)
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Text(element.texte)
                    .padding()
            
            }
            
        }
        .navigationBarTitle("Évèvement")

        
        
    }
        
    }
        
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        EventUIView()
    }
}


// Vue de row

struct listRow: View{
    let element: Element
    @State private var isSheetPresented : Bool = false
    
    var body: some View{
        HStack (spacing : 25){
            Image(element.img)
            .resizable()
            .clipShape(Rectangle())
            .cornerRadius(2)
            .frame(width: 100, height: 100)
             
        Spacer()
       
            VStack{
                Text(element.name)
            .font(.title3)
            .italic()
            .bold()
            .padding()
            
                Text  (element.date)
            }
            
        }
        
        
        
        }
        
    }
    


// Tableau

struct Element : Identifiable{
    let id = UUID()
    
    
    let img : String
    let addresse: String
    let ouvert: String
    let name : String
    let date : String
    let texte : String
   
    
}


let elements = [
    Element(img: "Image-3", addresse: "75 rue sébastien Gryphe,69007,Lyon", ouvert: "Ouvert 7 jours / 7" ,name: "Le foyer notre-dame des sans-abris", date: "Sat 22-11 PM", texte: "Lors de ces maraudes, les équipiers du Samu social distribuent des boissons, chaudes ou fraîches, de la nourriture, mais peuvent également fournir de manière exceptionnelle des vêtements, des couvertures, des duvets, des produits d'hygiène... Cette aide matérielle, souvent très appréciée, n'est cependant qu'un prétexte pour établir un dialogue. Petit à petit, à force de rencontres et d'échanges, des liens se créent."),
    
    
    Element(img: "Image-1", addresse: "120 avenue jules Guesde, 69200, Vénnisieux ",ouvert: "Ouvert 7 jours / 7"  ,name: "Féminité sans-abris", date: "Sat 29-11 PM" ,texte: "Lors de ces maraudes, les équipiers du Samu social distribuent des boissons, chaudes ou fraîches, de la nourriture, mais peuvent également fournir de manière exceptionnelle des vêtements, des couvertures, des duvets, des produits d'hygiène... Cette aide matérielle, souvent très appréciée, n'est cependant qu'un prétexte pour établir un dialogue. Petit à petit, à force de rencontres et d'échanges, des liens se créent."),
    
    
    
    Element(img: "Image", addresse: "59 rue de la défonce,95000,Paris",ouvert: "Ouvert 7 jours / 7" ,name: "Croix Rouge", date: "Sat 29-12 PM", texte: "Lors de ces maraudes, les équipiers du Samu social distribuent des boissons, chaudes ou fraîches, de la nourriture, mais peuvent également fournir de manière exceptionnelle des vêtements, des couvertures, des duvets, des produits d'hygiène... Cette aide matérielle, souvent très appréciée, n'est cependant qu'un prétexte pour établir un dialogue. Petit à petit, à force de rencontres et d'échanges, des liens se créent."),
    
    
    Element(img: "entourage", addresse: "59 rue duchère,95000,Paris",ouvert: "Ouvert 7 jours / 7" ,name: "Entourage", date: "Sat 29-12 PM", texte: "Lors de ces maraudes, les équipiers du Samu social distribuent des boissons, chaudes ou fraîches, de la nourriture, mais peuvent également fournir de manière exceptionnelle des vêtements, des couvertures, des duvets, des produits d'hygiène... Cette aide matérielle, souvent très appréciée, n'est cependant qu'un prétexte pour établir un dialogue. Petit à petit, à force de rencontres et d'échanges, des liens se créent."),
    
    
    Element(img: "alchimie", addresse: "59 rue duchère,95000,Paris",ouvert: "Ouvert 7 jours / 7" ,name: "L'alchimie de la saveur", date: "Sat 29-12 PM", texte: "Lors de ces maraudes, les équipiers du Samu social distribuent des boissons, chaudes ou fraîches, de la nourriture, mais peuvent également fournir de manière exceptionnelle des vêtements, des couvertures, des duvets, des produits d'hygiène... Cette aide matérielle, souvent très appréciée, n'est cependant qu'un prétexte pour établir un dialogue. Petit à petit, à force de rencontres et d'échanges, des liens se créent.")
    
]
