//
//  hero.swift
//  0706012110027-NickDevano-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation

struct Player {
    var name: String
    var Health: Int
    var mana: Int
    var Damage: Int
    
    mutating func PlayerAttackTroll (by Damage: Int){
        troll.health -= Damage
    }
    mutating func PlayerAttackGolem (by Damage: Int){
        golem.health -= Damage
    }
}
