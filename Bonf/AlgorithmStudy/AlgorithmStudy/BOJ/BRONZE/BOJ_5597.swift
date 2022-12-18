//
//  BOJ_5597.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/18.
//

import Foundation

func answer_BOJ_과제안내신분_5597() {
    var temp = [Int](repeating: 0, count: 30)

    for _ in 0..<28 {
        let input = Int(readLine()!)!
        temp[input-1] = 1
    }

    for index in 0..<30 {
        if temp[index] == 0 {
            print(index+1)
        }
    }
}
