//
//  PGS_120876.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/11/25.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120876

import Foundation

func answer_PGS_120876(_ lines:[[Int]]) -> Int {
    let firstLine = [lines[0][0], lines[0][1]]
    let secondLine = [lines[1][0], lines[1][1]]
    let thirdLine = [lines[2][0], lines[2][1]]
    
    let firstArray: [Int] = Array(firstLine[0]...firstLine[1])
    let secondArray: [Int] = Array(secondLine[0]...secondLine[1])
    let thirdArray: [Int] = Array(thirdLine[0]...thirdLine[1])
    
    var answer = 0
    
    let minNumber = min(min(firstLine[0], secondLine[0]), thirdLine[0])
    let maxNumber = max(max(firstLine[1], secondLine[1]), thirdLine[1])
    
    for i in minNumber...maxNumber - 1 {
        if firstArray.contains(i) && secondArray.contains(i) &&
            firstArray.contains(i + 1) && secondArray.contains(i + 1) {
            answer += 1
            continue
        }
        
        if secondArray.contains(i) && thirdArray.contains(i) &&
            secondArray.contains(i + 1) && thirdArray.contains(i + 1) {
            answer += 1
            continue
        }
        
        if thirdArray.contains(i) && firstArray.contains(i) &&
            thirdArray.contains(i + 1) && firstArray.contains(i + 1) {
            answer += 1
            continue
        }
    }
    
    return answer
}
