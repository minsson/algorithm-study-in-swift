//
//  ThreePeople.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/25.
//

import Foundation

func threePeople(_ number:[Int]) -> Int {
    var result = 0
    for index1 in 0...number.count - 3 {
        for index2 in index1+1...number.count - 2 {
            for index3 in index2+1...number.count - 1 {
                let sum = number[index1] + number[index2] + number[index3]
                if sum == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}
