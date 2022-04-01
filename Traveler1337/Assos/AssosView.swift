//
//  AssosView.swift
//  Traveler1337
//
//  Created by apprenant47 on 27/03/2022.
//

import SwiftUI

struct AssosView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        NavigationView {
            ScrollView {
            VStack {
                VStack {
                    
                    
                    Image("Screen1")
                        .shadow(radius: 10)
                    
                }
                
                
                .frame(width: 350, height: 240)
                .background(Color("white"))
                .cornerRadius(45)
                .shadow(radius: 4)
                
                
                
                
               
                    LazyVGrid(columns: columns, spacing: 8) {
                        
                        // Pour chaque association dans mon tableauAssociations
                        ForEach(tableauAssos) { association in
                            
                            // Utilise un plan vertical
                            NavigationLink() {
                                AssociationDetail(association: association)
                            } label: {
                                VStack {
                                    
                                    // et Affiche l'image de l'association
                                    Image(association.image)
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 150, height: 150)
                                        .background(Color(""))
                                        .cornerRadius(20)
                                        .clipped()
                                        .shadow(radius: 5)
                                        .shadow(radius: 5)
                                    
                                    // et le nom de l'association
                                    Text(association.name)
                                }
                            }
                            
                            
                        }
                        
                    }
                    .navigationTitle("Associations ")
                }
            }
            
        }
    }
}

struct AssosView_Previews: PreviewProvider {
    static var previews: some View {
        AssosView()
    }
}


// La structure association sert à representer une association dans mon app
struct Association: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    let text: String
}
// tableau qui contient toutes les associations que j'ai créé
let tableauAssos = [
    Association(name: "Fondation Maurice", image: "Assos7", text:"AJD Rencontre 15 rue du Dauphiné 69002 LYON \n \n Notre établissement dispose de 73 places pour l’accueil de jeunes adultes de 18 à 25 ans (personnes seules ou en couple, avec ou sans enfants) et répond aux besoins des personnes en situation de grande précarité et en voie d’exclusion. Nous disposons d’un parc immobilier diversifié, du studio au T4 pour l’accueil des personnes. Nous proposons un accompagnement individuel afin de favoriser l’accès à l’autonomie par l’accession au logement et la construction d’un projet. Accueil : Mixte Capacité : 73 Ages : 18-25 ans"),
    Association(name: "Le Mas", image: "Assos4", text:"Association Le MAS17 rue Crépet 69007 Lyon /n Tél. : 04 78 61 78 55 \n \n Centres d’Hébergement et de Réinsertion Sociale Accueil et Logement est un Centre d’Hébergement et de Réinsertion Sociale accueillant 25 ménages dans des hébergements diffus. Ces ménages nous sont orientés par la Maison de la Veille Sociale du Rhône. Nous acceptons toute composition familiale à l’exception, à leur arrivée, de femmes seules avec ou sans enfants ou d’hommes seuls. Date d’ouverture : 1974 Public : femmes isolées avec enfant.s Capacité d’accueil : 70 places insertion, 13 places pour situation impérative Type d’hébergement : 1 collectif et 13 logements diffus Nombre de personnes hébergées : 149 Nombre d’admissions : 60 Nombre de sorties : 10 Durée moyenne de séjour : 23 mois insertion, 49 mois de situations impératives"),
    Association(name: "Logement", image: "Assos2", text: "CHRS Accueil et logement 259 rue Paul Bert - 69003 Lyon \n \n Tél. 04 72 33 97 39 \n \n Centres d’Hébergement et de Réinsertion Sociale Accueil et Logement est un Centre d’Hébergement et de Réinsertion Sociale accueillant 25 ménages dans des hébergements diffus. Ces ménages nous sont orientés par la Maison de la Veille Sociale du Rhône. Nous acceptons toute composition familiale à l’exception, à leur arrivée, de femmes seules avec ou sans enfants ou d’hommes seuls. Date d’ouverture : 1974 Public : femmes isolées avec enfant.s Capacité d’accueil : 70 places insertion, 13 places pour situation impérative Type d’hébergement : 1 collectif et 13 logements diffus Nombre de personnes hébergées : 149 Nombre d’admissions : 60 Nombre de sorties : 10 Durée moyenne de séjour : 23 mois insertion, 49 mois de situations impératives "),
    Association(name: "RDC", image: "Assos6", text:"6-12 Espace Vallée 69007 - Lyon \n \n Fondés par Coluche en 1985 les Restos du Cœur est une association loi de 1901, reconnue d’utilité publique, sous le nom officiel de « les Restaurants du Cœur – les Relais du Cœur ». Ils ont pour but « d’aider et d’apporter une assistance bénévole aux personnes démunies, notamment dans le domaine alimentaire par l’accès à des repas gratuits, et par la participation à leur insertion sociale et économique, ainsi qu’à toute action contre la pauvreté sous toutes ses formes"),
    Association(name: "La Croux Rouge", image: "Assos5", text:"150 Rue Anatole France, 69100 Villeurbanne. \n \n Au travers d’un réseau très dense de délégations et d’établissements, la Croix-Rouge française est présente sur l’ensemble du territoire français y compris dans les départements et territoires d'outre-mer (DOM-TOM). Ce maillage lui permet d’intervenir au plus vite auprès des personnes en difficulté quelque soit le point du territoire ou le type d’intervention requis."),
    Association(name: "Foyer", image: "Assos1", text: "3 rue Père CHEVRIER / 69361 LYON CEDEX 07. \n \n L'association LE FOYER NOTRE-DAME DES SANS-ABRI vient en aide aux personnes isolées - hommes ou femmes - et aux familles en très grande difficulté, aux réalités et souffrances multiples : personnes sans-abri, personnes victimes de violences, hommes et femmes isolés en souffrance psychique voir psychiatrique, chômeurs de longue durée, jeunes en errance, familles, familles monoparentales, migrants avec ou sans papiers… "),
    Association(name: "SPF", image: "Assos3", text:"LYON 69006 10 rue Germain. \n \n Les femmes sans abri sont à ce jour de plus en plus nombreuses. Leur dignité n’est plus qu’utopie et la féminité aussi. Il est possible de faire un geste simple, sans que cela vous coûte : avec des dons d’échantillons, non utilisés, non entamés, bien sûr."),
    Association(name: "UNICEF", image: "Assos8", text:"3 rue Duguay-Trouin 75282 Paris Cedex 06 0969 368 468. \n \n UNICEF - pour United Nations International Children's Emergency Fund, soit Fonds des Nations unies pour l’enfance - est une agence des Nations unies, créée en 1946, dont le siège est à New York, aux États-Unis. Elle est chargée, dans le monde entier, de défendre les droits des enfants, de répondre à leurs besoins essentiels et de favoriser leur plein épanouissement.")
]
