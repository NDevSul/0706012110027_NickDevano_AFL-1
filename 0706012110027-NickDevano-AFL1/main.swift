//
//  main.swift
//  0706012110027_NickDevano_AFL1
//
//  Created by MacBook Pro on 28/02/23.
//

import Foundation


var troll = Troll()
var golem = Golem()
var player = Player(name: "",Health: 100,mana: 50,Damage: 20)
var Inventory1 = Potion(potionName: "Health potion", potion: 20)
var Inventory2 = Elixir(potionName: "Mana potion", elixir: 5)
var physicTroll = PhysicalAttackTroll()
var physicGolem = PhysicalAttackGolem()
var meteorgolem = MeteorGolem()
var meteortroll = MeteorTroll()
var shield = Shield()

//Opening Story (Intro)
let openingstory : String = "Welcome to a world of magic 🧙🏿‍♂️\nYou have been chosen to embark on an epic journey as a young wizard  on the path to becoming a master of the arcane arts. Your adventure will take you through forests 🌲, Mountains 🗻, and dungeon 🏰, where you will face challenges, make allies, and fight enemies \nPress [Return] to continue : "

for _ in 1... {
    print(openingstory)
    let choice1 = readLine()
    if choice1 == ""{
        break
    }else {
        
    }
}

//Naming Your wizard
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

//Function after inputing the name
func starting() {
    
    print("""
        From here, you can...
        [C]heck your health and stats
        [H]eal your wounds with potion
        [E]lixir regeneration with potion
        
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
        case "e":
            MPpotion()
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
    
    // Player Stat
    func  playerstat (){
        var playerstatchoice = ""
        repeat{
            print( """
                Player Name : \(player.name)
                HP : \(player.Health)
                MP : \(player.mana)
                Magic :
                - Physical attack. No mana required. Deal 5pt Damage
                - Meteor. use 15pt of MP. Deal 50pt of damage
                - Shield. use 10 pt of MP. Block enemy's attack in 1 turn.
                
                Items :
                - Potion x\(Inventory1.potion). Heal 20pt of your HP.
                - Elixir x\(Inventory2.elixir). Add 10pt of your MP
                
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
                Your HP is \(player.Health)
                You Have \(Inventory1.potion)
                Are you sure you want to use a potion [Y/N]?
                """)
            
            healingchoice = readLine()!
            if healingchoice.lowercased() == "n"{
                starting()
            }else if healingchoice.lowercased() == "y"{
                if Inventory1.potion <= 0 {
                    print("You dont have anymore potion")
                    player.Health -= 0
                    Inventory1.potion -= 0
                }else if Inventory1.potion >= 1 {
                    Inventory1.usePotion(Hero: player)
                }
            }
        }while healingchoice != ""
    }
    
    //potion
    func MPpotion(){
        var potionchoice = ""
        repeat{
            print("""
                Your MP is \(player.mana)
                You Have \(Inventory2.elixir)
                Are you sure you want to use a Mana Potion [Y/N]?
                """)
            potionchoice = readLine()!
            if potionchoice.lowercased() == "n"{
                starting()
            }else if potionchoice.lowercased() == "y"{
                if Inventory2.elixir <= 0 {
                    print("You dont have anymore potion")
                    player.mana -= 0
                    Inventory2.elixir -= 0
                }else if Inventory2.elixir >= 1 {
                    Inventory2.useElixir(Hero: player)
                }
            }
        }while potionchoice != ""
    }
    
    //forest
    
    func forest(){
        var forestchoice = ""
        print( """
                 As  you enter the forest, you feel a sense of unease wash over you. Suddenly, you hear the sound of twigs snapping behind you, you quickly spin around, and find a Troll emerging from the shadows.
                 """)
        
        while player.Health > 0 || troll.health > 0 || forestchoice != "6" {
            
            print("""
                     😈 Troll name : Jumbo Troll
                     😈 Health : \(troll.health)
                     
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
                physicTroll.physicalattacktroll()
            }else if forestchoice == "2"
            {
                meteortroll.MeteorTroll()
            }else if forestchoice == "3"{
                shield.execute()
            }else if forestchoice == "4"{
                if Inventory1.potion <= 0{
                    print("You dont have any potions")
                }else {
                    Inventory1.usePotion(Hero: player)
                }
            }else if forestchoice == "5"{
                print("Troll's Health = \(troll.health)")
                print("Troll's Damage = \(troll.attackDamage)")
            }else if forestchoice == "6"{
                if Inventory2.elixir <= 0{
                    print("You dont have any Mana Potions")
                }else {
                    Inventory2.useElixir(Hero: player)
                }
            }else if forestchoice == "7"{
                flee()
            }
            print("The troll attacks you!")
            troll.attack(by: player)
            if troll.health <= 0 {
                print("You defeated the Troll!")
                troll.health = (troll.health * 0) + 200
                player.Health = (player.Health * 0) + 100
                break
            }else if player.Health <= 0 {
                print("Sadly you lost the battle young wizard")
                player.Health = (player.Health * 0) + 100
                troll.health = (troll.health * 0) + 200
                break
            }
        }}
    
    //mountain
    func mountain(){
        if player.Health <= 0 {
            
        }
        var mountainchoice = ""
        print("""
                As you make your way through the rugged mountain terrain, you can feel the chill of the wind bitting at your skin. suddenly, you hear a sound that makes you freeze in your tracks.That's when you see it - a massive, snarling
                Golem emerging from the shadows.
                """)
        while player.Health > 0 || golem.health > 0 || mountainchoice != "6" {
            print("""
                 😈 Golem name : Hugging Golem
                 😈 Health : \(golem.health)
                 
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
                physicGolem.physicalattackgolem()
            }else if mountainchoice == "2"
            {
                meteorgolem.MeteorGolem()
            }else if mountainchoice == "3"{
                shield.execute()
            }else if mountainchoice == "4"{
                if Inventory1.potion <= 0{
                    print("You dont have any potions")
                }else {
                    Inventory1.usePotion(Hero: player)
                }
            }else if mountainchoice == "5"{
                print("Golem's Health = \(golem.health)")
                print("Golem's Damage = \(golem.attackDamage)")
            }else if mountainchoice == "6"{
                if Inventory2.elixir <= 0{
                    print("You dont have any Mana Potions")
                }else {
                    Inventory2.useElixir(Hero: player)
                }
            }else if mountainchoice == "7"{
                flee()
            }
            // Enemy attacks player
            print("The golem attacks you!")
            golem.attack(by: player)
            if golem.health <= 0 {
                print("You defeated the Golem!")
                golem.health = (golem.health*0) + 100
                player.Health = (player.Health*0) + 100
                break
            }else if player.Health <= 0 {
                print("Sadly you lost the battle young wizard")
                player.Health = (player.Health*0) + 100
                golem.health = (golem.health*0) + 100
                break
            }        }
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
}

