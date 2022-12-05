//
//  BOJ_2675.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/04.
//

import Foundation

func answer_BOJ_문자열반복_2675() {
    let T = Int(readLine()!)!
    
    var input: [String] = []
    for _ in 0..<T {
        input.append(readLine()!)
    }
    input.forEach {
        let inputArr = $0.split(separator: " ")
        let num = Int(inputArr[0])!
        let str = inputArr[1]
        
        for i in str {
            for _ in 0..<num {
                print(i, terminator: "")
            }
        }
        print("")
    }
}
