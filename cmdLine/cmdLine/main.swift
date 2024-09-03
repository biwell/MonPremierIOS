//
//  main.swift
//  cmdLine
//
//  Created by Gabriel Poirier (Étudiant) on 2024-09-03.
//

import Foundation

let caseFinale = 25
var plateau = [Int](repeating: 0, count: caseFinale + 1)

plateau[03] = +08; plateau[06] = +11;plateau[09] = +09;plateau[010] = +02
plateau[14] = -10;plateau[19] = -11;plateau[22] = -02;plateau[24] = -08

var caseCourante = 0
var jetDe = 0

while caseCourante < caseFinale {
    //lance le dé
    jetDe = Int.random(in: 1...6); print("jet:", jetDe)
    
    if caseCourante + jetDe <= caseFinale {
        // avance du montant du dé
        caseCourante+=jetDe; print("case courrante:",caseCourante)
        //si on est toujours sur le plateau, monte ou descend pour un serpent ou echelle
        caseCourante += plateau[caseCourante];print("serpent ou echelle",caseCourante)
    }
    else {
        print("avancement annule")
    }
}

print("Fin de la partie!")




