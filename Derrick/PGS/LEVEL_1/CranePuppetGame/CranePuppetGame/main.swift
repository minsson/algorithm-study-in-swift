//
//  main.swift
//  CranePuppetGame
//
//  Created by Derrick kim on 2022/11/28.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var total = board
    var answer: [Int] = []
    var count = 0

    for move in moves {
        for index in 0..<board.count {
            let value = total[index][move-1]

            if value == 0 {
                continue
            } else {
                if answer.count != 0 && value == answer[answer.count - 1] {

                    answer.removeLast()
                    count += 2
                    total[index][move-1] = 0
                } else {
                    answer.append(value)
                    total[index][move-1] = 0
                }
                break
            }
        }
    }

    return count
}

print(solution([[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]], [1,5,3,5,1,2,1,4]))

//[0,0],
//[0,0,1,0],
//[0,2,5,0],
//[4,2,4,4,2],
//[3,5,1]
//
//1 1 3 3 2
