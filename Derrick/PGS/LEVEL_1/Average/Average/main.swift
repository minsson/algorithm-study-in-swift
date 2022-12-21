//
//  main.swift
//  Average
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    guard arr.count >= 1, arr.count <= 100 else {
        return 0.0
    }
    return Double(arr.reduce(0) { partialResult, value in
        partialResult + value
    }) / Double(arr.count)
}

print(solution([1,2,3,4]))
//print(solution([5, 5]))
