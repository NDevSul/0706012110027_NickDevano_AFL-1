//
//  main.swift
//  0706012110027_NickDevano_AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var playerhealth = 100
var playermana = 50
var trollhealth : Int = 100

let openingstory : String = "Welcome to a world of magic 🧙🏿‍♂️\nYou have been chosen to embark on an epic journey as a young wizard  on the path to becoming a master of the arcane arts. Your adventure will take you through forests 🌲, Mountains 🗻, and dungeon 🏰, where you will face challenges, make allies, and fight enemies \nPress [Return] to continue or [N] to quit: "

for _ in 1... {
    print(openingstory)
    let choice1 = readLine()
    if choice1 == ""{
        break
    }else if choice1?.lowercased() == "N"{
        print("Okay.. See you next time young wizard")
    }
}

var Nama: String = ""

Nama = readLine() ?? "";

if Nama == ""  {
   print("Im assuming your name is Guest")
} else {
    print("Nice to meet you \(Nama)")
}

let starting = """
From here, you can...
[C]heck your health and stats
[H]eal your wounds with potion

Or.. you can choose where you want to go

[F]orest or trolls
[M]ountain of golem
[Q]uit the game

Your choice young wizard.. :
"""

// Forest
let forest: String = """
 As  you enter the forest, you feel a sense of unease wash over you. Suddenly, you hear the sound of twigs snapping behind you, you quickly spin around, and find a Troll emerging from the shadows.
 
 😈 Troll name : Jumbo Troll
 😈 Health : \(trollhealth)
 
 Choose your action :
 [1] Physical attack. No mana required. Deal 5pt Damage
 [2] Meteor. use 15pt of MP. Deal 50pt of damage
 [3] Shield. use 10 pt of MP. Block enemy's attack in 1 turn.
 
 [4] Use potion to heal wound
 [5] Scan enemy's vital
 [6] Flee from battle
 
 Whats your choice
 """



// Player Stat
let playerstat = """
Player Name : \(Nama)
HP : \(playerhealth)
MP : \(playermana)
Magic :
- Physical attack. No mana required. Deal 5pt Damage
- Meteor. use 15pt of MP. Deal 50pt of damage
- Shield. use 10 pt of MP. Block enemy's attack in 1 turn.

Items :
- Potion x10. Heal 20pt of your HP.
- Elixir x5. Add 10pt of your MP
"""

