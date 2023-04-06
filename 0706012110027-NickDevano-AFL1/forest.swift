//
//  forest.swift
//  0706012110027-NickDevano-AFL1
//
//  Created by MacBook Pro on 31/03/23.
//

import Foundation

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
                summonMeteorTroll()
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
                summonMeteorGolem()
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
