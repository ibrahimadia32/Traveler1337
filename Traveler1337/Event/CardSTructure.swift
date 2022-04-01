//
//  CardSTructure.swift
//  Traveler1337
//
//  Created by apprenant47 on 29/03/2022.
//

import Foundation
import SwiftUI

struct CardStructure: Identifiable {
    
    
    let id = UUID()
    let image: String
    let titre: String
    let text : String

}


var Cards: [CardStructure]
=
[

    CardStructure(image:"asso", titre:"Ensemble",text:"Anciens sans-abris, personnes dans le besoin, généreux donateurs, associations humanitairement engagées... soyons nombreux à nous retrouver ce samedi 2 avril dans un grand stand sur l'esplanade Nelson Mandela, St-Priest ! Repas offert, activités conviviales, nouvelles rencontres... partageons ensemble un moment inoubliable."),
    CardStructure(image:"Dons", titre:"Grande Distribution",text: "Préparation et distribution de repas à tous les sans-abris sur Lyon 7 et Lyon 8, lundi 4 et jeudi 7 avril. RDV Salle des fêtes de la guillotière à 17H pour commencer la préparation, et à 19H pour la distribution."),
    CardStructure(image:"aliment", titre:"Maraude",text: "Samedi 9 avril, venez nous aider à distribuer des colis alimentaires et des sacs de vêtements àtous les sans-abris, secteur Perrache et Lyon Part-Dieu."),
    CardStructure(image:"masque", titre:"Collecte de vêtements",text: "Soyez nombreux à venir donner vos vêtements à la salle Maurice, dimanche 10 avril, neufs ou usagés, nous les prépareons pour les distribuer par la suite à tous les nécessiteux que nous rencontrerons"),
    CardStructure(image:"unis", titre:"Festival Solidaire", text: "Jeux, attractions, nouvelles rencontres, activités et moments de partage, faisons en sorte que ce jour reste dans nos mémoires ! Participation gratuite, nous comptons sur votre bon coeur pour récolter de quoi offrir des colis alimentaires et des vêtements à toutes les familles nécessiteuses que nous aidons durant l'année.")

]
