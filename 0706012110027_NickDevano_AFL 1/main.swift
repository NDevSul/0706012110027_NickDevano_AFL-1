//
//  main.swift
//  0706012110027_NickDevano_AFL 1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var playerhealth = 100
var playermana = 50

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

print(forest)


