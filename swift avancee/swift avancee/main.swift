//
//  main.swift
//  swift avancee
//
//  Created by Gabriel Poirier (Étudiant) on 2024-09-10.
//

import Foundation

var str = "Bienvenue au jeu!"
let borneMin = 1
let borneMax = 100
let chiffreMystère = Int.random(in: borneMin...borneMax) // Écrire la formule qui permet de calculer un chiffre entre borneMin et borneMax
let nbCoupsMax = 10


print("DB 1: \(chiffreMystère)")


for i in 1...nbCoupsMax{
 print("Entrez un nombre entre \(borneMin) et \(borneMax):")
    
    if let res = readLine(), let nb = Int(res){
        print("DB 2: \(nb)")
        if i == nbCoupsMax{
            print("Perdu, vous avez épuisé vos \(nbCoupsMax) tentatives.")
            break
        } else if nb == chiffreMystère{
            print("Gagné! vous avez trouvé le chiffre mystère.")
            break
        } else if nb < chiffreMystère{
            print("le nombre à deviner est plus grand.")
        } else {
            print("le nombre à deviner est plus petit.")
        } 
    }
    else {
        print("Veuillez entrer un nombre valide.")
    }
 
}


print("Bye")
