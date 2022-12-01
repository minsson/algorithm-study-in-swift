//
//  BOJ_10807.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/25.
//

import Foundation

func answer_BOJ_개수세기_10807() {
    let count = Int(readLine()!)!
    let nums = readLine()!.components(separatedBy: " ").map({String($0)})
    
    let v = readLine()!
    var result = 0
    
    for c in 0...count-1 {
        if nums[c] == v {
            result += 1
        }
    }

    print(result)
}
