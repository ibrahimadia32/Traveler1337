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


// La structure association sert ?? representer une association dans mon app
struct Association: Identifiable {
    let id = UUID()
    
    let name: String
    let image: String
    let text: String
}
// tableau qui contient toutes les associations que j'ai cr????
let tableauAssos = [
    Association(name: "Fondation Maurice", image: "Assos7", text:"AJD Rencontre 15 rue du Dauphin?? 69002 LYON \n \n Notre ??tablissement dispose de 73 places pour l???accueil de jeunes adultes de 18 ?? 25 ans (personnes seules ou en couple, avec ou sans enfants) et r??pond aux besoins des personnes en situation de grande pr??carit?? et en voie d???exclusion. Nous disposons d???un parc immobilier diversifi??, du studio au T4 pour l???accueil des personnes. Nous proposons un accompagnement individuel afin de favoriser l???acc??s ?? l???autonomie par l???accession au logement et la construction d???un projet. Accueil : Mixte Capacit?? : 73 Ages : 18-25 ans"),
    Association(name: "Le Mas", image: "Assos4", text:"Association Le MAS17 rue Cr??pet 69007 Lyon /n T??l. : 04 78 61 78 55 \n \n Centres d???H??bergement et de R??insertion Sociale Accueil et Logement est un Centre d???H??bergement et de R??insertion Sociale accueillant 25 m??nages dans des h??bergements diffus. Ces m??nages nous sont orient??s par la Maison de la Veille Sociale du Rh??ne. Nous acceptons toute composition familiale ?? l???exception, ?? leur arriv??e, de femmes seules avec ou sans enfants ou d???hommes seuls. Date d???ouverture : 1974 Public : femmes isol??es avec enfant.s Capacit?? d???accueil : 70 places insertion, 13 places pour situation imp??rative Type d???h??bergement : 1 collectif et 13 logements diffus Nombre de personnes h??berg??es : 149 Nombre d???admissions : 60 Nombre de sorties : 10 Dur??e moyenne de s??jour : 23 mois insertion, 49 mois de situations imp??ratives"),
    Association(name: "Logement", image: "Assos2", text: "CHRS Accueil et logement 259 rue Paul Bert - 69003 Lyon \n \n T??l. 04 72 33 97 39 \n \n Centres d???H??bergement et de R??insertion Sociale Accueil et Logement est un Centre d???H??bergement et de R??insertion Sociale accueillant 25 m??nages dans des h??bergements diffus. Ces m??nages nous sont orient??s par la Maison de la Veille Sociale du Rh??ne. Nous acceptons toute composition familiale ?? l???exception, ?? leur arriv??e, de femmes seules avec ou sans enfants ou d???hommes seuls. Date d???ouverture : 1974 Public : femmes isol??es avec enfant.s Capacit?? d???accueil : 70 places insertion, 13 places pour situation imp??rative Type d???h??bergement : 1 collectif et 13 logements diffus Nombre de personnes h??berg??es : 149 Nombre d???admissions : 60 Nombre de sorties : 10 Dur??e moyenne de s??jour : 23 mois insertion, 49 mois de situations imp??ratives "),
    Association(name: "RDC", image: "Assos6", text:"6-12 Espace Vall??e 69007 - Lyon \n \n Fond??s par Coluche en 1985 les Restos du C??ur est une association loi de 1901, reconnue d???utilit?? publique, sous le nom officiel de ?? les Restaurants du C??ur ??? les Relais du C??ur ??. Ils ont pour but ?? d???aider et d???apporter une assistance b??n??vole aux personnes d??munies, notamment dans le domaine alimentaire par l???acc??s ?? des repas gratuits, et par la participation ?? leur insertion sociale et ??conomique, ainsi qu????? toute action contre la pauvret?? sous toutes ses formes"),
    Association(name: "La Croux Rouge", image: "Assos5", text:"150 Rue Anatole France, 69100 Villeurbanne. \n \n Au travers d???un r??seau tr??s dense de d??l??gations et d?????tablissements, la Croix-Rouge fran??aise est pr??sente sur l???ensemble du territoire fran??ais y compris dans les d??partements et territoires d'outre-mer (DOM-TOM). Ce maillage lui permet d???intervenir au plus vite aupr??s des personnes en difficult?? quelque soit le point du territoire ou le type d???intervention requis."),
    Association(name: "Foyer", image: "Assos1", text: "3 rue P??re CHEVRIER / 69361 LYON CEDEX 07. \n \n L'association LE FOYER NOTRE-DAME DES SANS-ABRI vient en aide aux personnes isol??es - hommes ou femmes - et aux familles en tr??s grande difficult??, aux r??alit??s et souffrances multiples : personnes sans-abri, personnes victimes de violences, hommes et femmes isol??s en souffrance psychique voir psychiatrique, ch??meurs de longue dur??e, jeunes en errance, familles, familles monoparentales, migrants avec ou sans papiers??? "),
    Association(name: "SPF", image: "Assos3", text:"LYON 69006 10 rue Germain. \n \n Les femmes sans abri sont ?? ce jour de plus en plus nombreuses. Leur dignit?? n???est plus qu???utopie et la f??minit?? aussi. Il est possible de faire un geste simple, sans que cela vous co??te : avec des dons d?????chantillons, non utilis??s, non entam??s, bien s??r."),
    Association(name: "UNICEF", image: "Assos8", text:"3 rue Duguay-Trouin 75282 Paris Cedex 06 0969 368 468. \n \n UNICEF - pour United Nations International Children's Emergency Fund, soit Fonds des Nations unies pour l???enfance - est une agence des Nations unies, cr????e en 1946, dont le si??ge est ?? New York, aux ??tats-Unis. Elle est charg??e, dans le monde entier, de d??fendre les droits des enfants, de r??pondre ?? leurs besoins essentiels et de favoriser leur plein ??panouissement.")
]
