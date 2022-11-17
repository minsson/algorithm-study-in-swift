//
//  main.swift
//  DiagnoseOrder
//
//  Created by Derrick kim on 2022/11/09.
//

import Foundation

func solution(_ emergency: [Int]) -> [Int] {
    guard emergency.count <= 10 else {
        return []
    }

    let sortedEmergency = emergency.sorted(by: { $0 > $1 })
    print(sortedEmergency)

    var emSt = emergency
    var result = Array(repeating: 0, count: emergency.count)

    for (sortedIndex, sortedNumber) in sortedEmergency.enumerated() {
        for (index, number) in emSt.enumerated() {
            if sortedNumber == number {
                result[index] = sortedIndex + 1
            }
        }
    }

    return result
}

print(solution([1, 2, 3, 4, 5, 6, 7]))
