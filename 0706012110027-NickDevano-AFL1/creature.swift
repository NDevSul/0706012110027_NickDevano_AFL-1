//
//  creature.swift
//  0706012110027-NickDevano-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation

protocol Enemy {
    var name: String { get }
    var health: Int { get set }
    var attackDamage: Int { get }
    
}


class Troll: Enemy {
    var name = "Jumbo Troll"
    var health = 200
    var attackDamage = 10

    func attack(by attackdamage : Player) {
        player.Health -= attackDamage
    }
}

class Golem: Enemy {
    var name = "Mountain Golem"
    var health = 1000
    var attackDamage = 20

    func attack(by attackdamage : Player) {
        player.Health -= attackDamage
    }
}



