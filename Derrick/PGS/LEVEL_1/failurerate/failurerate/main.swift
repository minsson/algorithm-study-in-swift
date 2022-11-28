//
//  main.swift
//  failurerate
//
//  Created by Derrick kim on 2022/11/27.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var totalStageFailureRate: [Int: Double] = [:]

    for level in 1...N {
        let currentStagePeople = stages.filter{ $0 >= level }.count

        let stageTotal = stages.filter{ $0 > level }.count

        let failureRate = Double(currentStagePeople) / Double(stageTotal)

        totalStageFailureRate.updateValue(failureRate, forKey: level)
    }

    let rate = totalStageFailureRate.sorted(by: <).sorted(by: { $0.value > $1.value })

    return rate.map{ $0.key }
}

print(solution(4, [4,4,4,4,4]))
