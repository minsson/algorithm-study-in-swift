//
//  BOJ_2869.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/17.
//

import Foundation

func answer_BOJ_달팽이는올라가고싶다_2869() {
    let input = readLine()!
    let inputArr = input.components(separatedBy: " ")
    let day = Int(inputArr[0])!
    let night = Int(inputArr[1])!
    var goal = Int(inputArr[2])!
    
    let 하루 = day - night
    goal -= day
    var answer = 0
    answer += 1
    
    answer += goal / 하루
    answer += goal % 하루 > 0 ? 1 : 0
    print(answer)
}
