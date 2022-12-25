//
//  PGS_PairRemove_12973.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/25.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12973
//
import Foundation

func answer_짝지어제거하기_12973() {
    let testInput: [String] = ["baabaa","cdcd","abc"] //입력값 조정하기
    testInput.forEach { input in
        print(solutionForm12973(input))
    }
}

func solutionForm12973(_ input: String) -> Int {
    
    var currentStringArray: [String] = []
    input.forEach { char in
        currentStringArray.append(String(char))
    }
    //print("start: \(currentStringArray)")
    while true {
        let removedResult = removing(input: currentStringArray)
        if !removedResult.isChanged {
            break
        }
        
        currentStringArray = removedResult.arr
        print(currentStringArray)
    }
    //print("result: \(currentStringArray)")
    return currentStringArray.count == 0 ? 1 : 0
}

func removing(input: [String]) -> (arr: [String], isChanged: Bool) {
    var result: [String] = []
    var isChanged: Bool = false
    var continueCheck = false
    print("max: \(input.count)")
    for index in 0..<input.count {
        
        print("index: \(index)")
        if index >= input.count - 1 {
            break
        } else {
            if continueCheck {
                continueCheck = false
                continue
            }
            if input[index] != input[index + 1] {
                result.append(input[index])
                continue
            } else {
                isChanged = true
                continueCheck = true
                print("paired: \(input[index]), \(input[index + 1])")
            }
        }
    }
    
    return (result, isChanged)
}
