//
//  main.swift
//  failurerate
//
//  Created by Derrick kim on 2022/11/27.
//

import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var totalStageFailureRate: [Int: Double] = [:]
    var stageTotal = Double(stages.count)
    var currentStagePeople = Array(repeating: 0, count: N+2)

    for level in stages {
        currentStagePeople[level] += 1
    }

    for level in 1...N {
        if currentStagePeople[level] == 0 {
            totalStageFailureRate[level] = 0.0
        } else {
            stageTotal = stageTotal - Double(currentStagePeople[level])
            totalStageFailureRate[level] = Double(currentStagePeople[level]) / Double(stageTotal)
        }

    }

    return totalStageFailureRate.sorted(by: <).sorted(by: { $0.value > $1.value }).map{ $0.key }
}

print(solution(4, [4,4,4,4,4]))
