//
//  main.swift
//  dartGame
//
//  Created by Derrick kim on 2022/11/27.
//

import Foundation

func solution(_ dartResult:String) -> Int {
    var scores = dartResult.split(whereSeparator: { !$0.isNumber }).compactMap { Int($0) }
    let letters = dartResult.split(whereSeparator: { $0.isNumber })

    for (index, letter) in letters.enumerated() {
        letter.forEach {
            let score = scores[index]
            switch $0 {
            case "D":
                scores[index] = score * score
            case "T":
                scores[index] = score * score * score
            case "*":
                scores[index] = 2 * score
                if index - 1 >= 0 {
                    scores[index - 1] *= 2
                }
            case "#":
                scores[index] = -score
            default:
                break
            }
        }
    }

    return scores.reduce(0) {
        $0 + $1
    }
}

print(solution("1D2S#10S"))
