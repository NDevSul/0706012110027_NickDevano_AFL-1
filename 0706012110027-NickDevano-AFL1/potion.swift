//
//  potion.swift
//  0706012110027-NickDevano-AFL1
//
//  Created by MacBook Pro on 06/04/23.
//

import Foundation

class Inventory {
    var potionName: String

    init(potionName: String) {
        self.potionName = potionName
    }
}

class Potion: Inventory {
    var potion: Int

    init(potionName: String, potion: Int) {
        self.potion = potion
        super.init(potionName: potionName)
    }

    func usePotion(Hero: Player) {
        potion -= 1
        player.Health += 20
    }
}

class Elixir: Inventory {
    var elixir: Int

    init(potionName: String, elixir: Int) {
        self.elixir = elixir
        super.init(potionName: potionName)
    }

    func useElixir(Hero: Player) {
        elixir -= 1
        player.mana += 30
    }
}
