//
//  combat.swift
//  0706012110027-NickDevano-AFL1
//
//  Created by MacBook Pro on 05/04/23.
//

import Foundation

    class Skills {
        var name: String
        var damage: Int
        init(name: String, damage: Int) {
            self.name = name
            self.damage = damage
        }
    }

    class PhysicalAttackTroll: Skills {
        init() {
            super.init(name: "Physical Attack", damage: 20)
        }
        
         func physicalattacktroll() {
            print("You deal 20 damage to the enemy.")
            troll.health -= damage
        }
    }

class PhysicalAttackGolem: Skills {
    init() {
        super.init(name: "Physical Attack", damage: 20)
    }
    
     func physicalattackgolem() {
        print("You deal 20 damage to the enemy.")
        golem.health -= damage
    }
}


    class MeteorTroll: Skills {
        let manaCost: Int = 20
        
        init() {
            super.init(name: "Meteor", damage: 50)
        }
        
         func MeteorTroll() {
            print("You consume \(manaCost) mana and deal 50 damage to the enemy with a meteor!")
             troll.health -= damage
             player.mana -= manaCost
        }
    }

class MeteorGolem: Skills {
    let manaCost: Int = 20
    
    init() {
        super.init(name: "Meteor", damage: 50)
    }
    
     func MeteorGolem() {
        print("You consume \(manaCost) mana and deal 50 damage to the enemy with a meteor!")
         golem.health -= damage
         player.mana -= manaCost
    }
}

    class Shield: Skills {
        init() {
            super.init(name: "Shield", damage: 0)
        }
        
         func execute() {
            print("You protect yourself with a shield for one round.")
        }
    }
