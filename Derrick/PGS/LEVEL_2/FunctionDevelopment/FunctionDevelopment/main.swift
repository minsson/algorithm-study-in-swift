//
//  main.swift
//  FunctionDevelopment
//
//  Created by Derrick kim on 2022/12/25.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var result: [Int] = []
    var queue: [Int] = []
    
    for (index, progress) in progresses.enumerated() {
        let reminder = 100 - progress

        let distributionDate = Int(ceil(Double(reminder) / Double(speeds[index])))

        if (!queue.isEmpty
            && queue.first! < distributionDate) {
            result.append(queue.count)
            queue.removeAll()
        }

        queue.append(distributionDate)
    }

    result.append(queue.count)

    return result
}

print(solution([93, 30, 55], [1, 30, 5]))
print(solution([95, 90, 99, 99, 80, 99], [1, 1, 1, 1, 1, 1]))
