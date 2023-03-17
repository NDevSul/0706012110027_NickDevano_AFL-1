//
//  main.swift
//  0706012110027_NickDevano_AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation

var playerhealth = 100
var playermana = 50
var potion = 20
var golemattack = 20
var manapotion = 5
var trollattack = 10
let creatureHealth = ["troll": 200, "golem": 1000]
var trollHealth = creatureHealth["troll"] ?? 0
var golemHealth = creatureHealth["golem"] ?? 0

let openingstory : String = "Welcome to a world of magic 🧙🏿‍♂️\nYou have been chosen to embark on an epic journey as a young wizard  on the path to becoming a master of the arcane arts. Your adventure will take you through forests 🌲, Mountains 🗻, and dungeon 🏰, where you will face challenges, make allies, and fight enemies \nPress [Return] to continue : "

for _ in 1... {
    print(openingstory)
    let choice1 = readLine()
    if choice1 == ""{
        break
    }else {
        
    }
}

print("What is your name Young wizard?")

var Nama: String?
let letterCharacterSet = CharacterSet.letters

while Nama == nil || Nama!.rangeOfCharacter(from: letterCharacterSet.inverted) != nil {
    print("Only input Alphabet")
    Nama = readLine()
}

if Nama == "" {
    print("I'm assuming your name is Guest")
    Nama = "Guest"
}

print("Nice to meet you, \(Nama!)")
starting()


func starting() {
    
    print("""
From here, you can...
[C]heck your health and stats
[H]eal your wounds with potion

Or.. you can choose where you want to go

[F]orest or trolls
[M]ountain of golem
[Q]uit the game

Your choice young wizard.. :
""")
    var Run = true
    
    while Run {
        let choice2 = readLine()
        switch choice2?.lowercased() {
        case "c" :
            playerstat()
        case "h":
            healingscreen()
        case "f":
            print("You are entering the forest ")
            forest()
        case "m":
            print("You are entering the mountain ")
            mountain()
        case "q":
            print("Okay thanks for playing")
            exit(0)
        default:
            print("Invalid choice!")
            starting()
        }
    }
    
    
    // Forest
    func forest(){
        var forestchoice = ""
        print( """
 As  you enter the forest, you feel a sense of unease wash over you. Suddenly, you hear the sound of twigs snapping behind you, you quickly spin around, and find a Troll emerging from the shadows.
 """)
        
        while playerhealth > 0 || trollHealth > 0 || forestchoice != "6" {
            
            print("""
 😈 Troll name : Jumbo Troll
 😈 Health : \(trollHealth)
 
 Choose your action :
 [1] Physical attack. No mana required. Deal 5pt Damage
 [2] Meteor. use 15pt of MP. Deal 50pt of damage
 [3] Shield. use 10 pt of MP. Block enemy's attack in 1 turn.
 
 [4] Use potion to heal wound
 [5] Scan enemy's vital
 [6] Use Mana Potion
 [7] Flee from battle
 
 Whats your choice
 """)
            forestchoice = readLine()!
            if forestchoice == "1" {
                physicalAttack()
            }else if forestchoice == "2"
            {
                summonMeteor()
            }else if forestchoice == "3"{
                trollshield()
            }else if forestchoice == "4"{
                if potion <= 0{
                    print("You dont have any potions")
                }else {
                    playerhealth += 20
                    potion -= 1
                }
            }else if forestchoice == "5"{
                print("Troll's Health = \(trollHealth)")
            }else if forestchoice == "6"{
                if manapotion <= 0{
                    print("You dont have any Mana Potions")
                }else {
                    playermana += 10
                    manapotion -= 1
                }
            }else if forestchoice == "7"{
                flee()
            }
            print("The troll attacks you!")
            playerhealth -= trollattack
            if trollHealth <= 0 {
                print("You defeated the Troll!")
                trollHealth = (trollHealth*0) + 200
                break
            }else if playerhealth <= 0 {
                print("Sadly you lost the battle young wizard")
                playerhealth = (playerhealth*0) + 100
                break
            }
        }}
    
    
    //mountain
    func mountain(){
        if playerhealth <= 0 {
            
        }
        var mountainchoice = ""
        print("""
As you make your way through the rugged mountain terrain, you can feel the chill of the wind bitting at your skin. suddenly, you hear a sound that makes you freeze in your tracks.That's when you see it - a massive, snarling
Golem emerging from the shadows.
""")
        while playerhealth > 0 || golemHealth > 0 || mountainchoice != "6" {
            print("""
 😈 Golem name : Hugging Golem
 😈 Health : \(golemHealth)
 
 Choose your action :
 [1] Physical attack. No mana required. Deal 5pt Damage
 [2] Meteor. use 15pt of MP. Deal 50pt of damage
 [3] Shield. use 10 pt of MP. Block enemy's attack in 1 turn.
 
 [4] Use potion to heal wound
 [5] Scan enemy's vital
 [6] Use Mana potion
 [7] Flee from battle
 
 Whats your choice
""")
            mountainchoice = readLine()!
            if mountainchoice == "1" {
                GolemPhysicalAttack()
            }else if mountainchoice == "2"
            {
                summonMeteor()
            }else if mountainchoice == "3"{
                //                golemshield()
            }else if mountainchoice == "4"{
                if potion <= 0{
                    print("You dont have any potions")
                }else {
                    playerhealth += 20
                    potion -= 1
                }
            }else if mountainchoice == "5"{
                print("Golem's Health = \(golemHealth)")
            }else if mountainchoice == "6"{
                if manapotion <= 0{
                    print("You dont have any Mana Potions")
                }else {
                    playermana += 10
                    manapotion -= 1
                }
            }else if mountainchoice == "7"{
                flee()
            }
            // Enemy attacks player
            print("The golem attacks you!")
            playerhealth -= golemattack
            if golemHealth <= 0 {
                print("You defeated the Golem!")
                golemHealth = (golemHealth*0) + 100
                break
            }else if playerhealth <= 0 {
                print("Sadly you lost the battle young wizard")
                playerhealth = (playerhealth*0) + 100
                break
            }        }
    }
    
    
    // Player Stat
    func  playerstat (){
        var playerstatchoice = ""
        repeat{
            print( """
Player Name : \(Nama ?? "")
HP : \(playerhealth)
MP : \(playermana)
Magic :
- Physical attack. No mana required. Deal 5pt Damage
- Meteor. use 15pt of MP. Deal 50pt of damage
- Shield. use 10 pt of MP. Block enemy's attack in 1 turn.

Items :
- Potion x\(potion). Heal 20pt of your HP.
- Elixir x\(manapotion). Add 10pt of your MP

Press [Return to go back]
""")
            playerstatchoice = readLine()!
            if playerstatchoice == "" {
                starting()
            }
            
        }while playerstatchoice != ""
        
        
    }
    
    
    //healing Screen
    func healingscreen(){
        var healingchoice = ""
        repeat{
            print("""
Your HP is \(playerhealth)
You Have \(potion)
Are you sure you want to use a potion [Y/N]?
""")
            
            healingchoice = readLine()!
            if healingchoice.lowercased() == "n"{
                starting()
            }else if healingchoice.lowercased() == "y"{
                if potion <= 0 {
                    print("You dont have anymore potion")
                    playerhealth -= 0
                    potion -= 0
                }else if potion >= 1 {
                    playerhealth = playerhealth + 20
                    potion = potion - 1
                }
            }
        }while healingchoice != ""
    }
    
    //potion
    func MPpotion(){
        var potionchoice = ""
        repeat{
            print("""
Your MP is \(playermana)
You Have \(manapotion)
Are you sure you want to use a Mana Potion [Y/N]?
""")
            
            potionchoice = readLine()!
            if potionchoice.lowercased() == "n"{
                starting()
            }else if potionchoice.lowercased() == "y"{
                if manapotion <= 0 {
                    print("You dont have anymore potion")
                    playermana -= 0
                    manapotion -= 0
                }else if potion >= 1 {
                    playermana = playermana + 10
                    manapotion = manapotion - 1
                }
            }
        }while potionchoice != ""
    }
    
    
    
    //Flee from the battle
    func flee(){
        print("""
You feel like if you dont escape soon, you wont be able to continue your fight.
      You look around frantically, searching for a way out. You sprint  towards an exit, your heart pounding in your chest

You're safe now, for now
Press [return] to continue
""")
        let fleechoice = ""
        if fleechoice == ""{
            starting()
        }
    }
    
    
    func physicalAttack() {
        trollHealth -= 5
        print("You hit the troll for 5 damage!")
    }
    func GolemPhysicalAttack(){
        golemHealth -= 5
        print("You hit the Golem for 5 damage!")
    }
    
    func summonMeteor() {
        if playermana >= 15 {
            trollHealth -= 50
            playermana -= 15
            print("You summoned a meteor and hit the enemy for 50 damage!")
        } else {
            print("You don't have enough mana to use this move.")
        }
    }
    
    func golemshield() {
        if playermana >= 10 {
            print("You raise a shield and block the golem's attack!")
            playermana -= 10
            playerhealth = playerhealth + (golemattack*2)
            
        } else {
            print("You don't have enough mana to use this move.")
        }
    }
    func trollshield() {
        if playermana >= 10 {
            print("You raise a shield and block the Troll's attack!")
            playermana -= 10
            playerhealth = playerhealth + (trollattack*2)
            
        } else {
            print("You don't have enough mana to use this move.")
        }
    }
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
    
    func scan() {
        print("The golem has \(golemHealth) HP remaining.")
    }
}
