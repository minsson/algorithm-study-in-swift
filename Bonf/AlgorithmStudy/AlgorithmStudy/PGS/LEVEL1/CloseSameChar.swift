//
//  CloseSameChar.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/12/25.
//

import Foundation

func findSameChar(_ s:String) -> [Int] {
    let arrayS = Array(s)
    var result: [Int] = []
    for index in 0..<arrayS.count {
        var count = -1
        for index2 in 0..<index {
            if arrayS[index] == arrayS[index2] {
                let abc = index - index2
                count = abc
            }
        }
        result.append(count)
    }
    return result
}
