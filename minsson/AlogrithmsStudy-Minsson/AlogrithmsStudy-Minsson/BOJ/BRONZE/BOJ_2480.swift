//
//  BOJ_2480.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/12/04.
//  https://www.acmicpc.net/problem/2480

import Foundation

func answer_BOJ_주사위세개_2480() {
    let diceEyes = readLine()!.components(separatedBy: " ")
    
    if diceEyes[0] == diceEyes[1] && diceEyes[1] == diceEyes[2] {
        let price = 10000 + Int(diceEyes[0])! * 1000
        print(price)
        return
    }
    
    if diceEyes[0] == diceEyes[1] {
        print(1000 + Int(diceEyes[0])! * 100)
        return
    } else if diceEyes[1] == diceEyes[2] {
        print(1000 + Int(diceEyes[1])! * 100)
        return
    } else if diceEyes[0] == diceEyes[2] {
        print(1000 + Int(diceEyes[0])! * 100)
        return
    }
    
    if diceEyes[0] != diceEyes[1] && diceEyes[1] != diceEyes[2] {
        let diceEyesConverted: [Int] = diceEyes.map{ Int($0)! }
        let max = diceEyesConverted.max()!
        
        print(max * 100)
    }
}


