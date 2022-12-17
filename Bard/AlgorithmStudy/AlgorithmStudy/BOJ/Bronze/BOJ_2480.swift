//
//  BOJ_2480.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/17.
//  https://www.acmicpc.net/problem/2480

import Foundation

func answer_BOJ_2480() {
    let input = readLine()!
    let firstDice = Int(input.components(separatedBy: " ")[0])!
    let secondDice = Int(input.components(separatedBy: " ")[1])!
    let thirdDice = Int(input.components(separatedBy: " ")[2])!

    if firstDice == secondDice && secondDice == thirdDice {
        print(10000 + (firstDice * 1000))
    } else if firstDice == secondDice || firstDice == thirdDice {
        print(1000 + (firstDice * 100))
    } else if secondDice == thirdDice {
        print(1000 + (secondDice * 100))
    } else if firstDice != secondDice && secondDice != thirdDice && firstDice != thirdDice {
        let maxDice = [firstDice, secondDice, thirdDice].sorted()[2]
        
        print(maxDice * 100)
    }
}
