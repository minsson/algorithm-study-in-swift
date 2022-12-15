//
//  BOJ_2562.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/11.
//

import Foundation

func answer_BOJ_최댓값_2562() {
    var maxInt = 0
    var maxIndex = 0
    for i in 0..<9 {
        let input = Int(readLine()!)!
        if maxInt < input {
            maxInt = input
            maxIndex = i + 1
        }
    }
    print(maxInt)
    print(maxIndex)
}
