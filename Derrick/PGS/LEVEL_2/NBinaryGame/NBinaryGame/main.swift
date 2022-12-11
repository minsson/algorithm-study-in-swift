//
//  main.swift
//  NBinaryGame
//
//  Created by Derrick kim on 2022/11/30.
//

import Foundation

func solution(_ nBinary: Int,
              _ totalCount: Int,
              _ members: Int,
              _ startPoint: Int) -> String {
    guard nBinary >= 2, nBinary <= 16, totalCount > 0, totalCount <= 1000, members >= 2, members <= 100, startPoint >= 1, startPoint <= members else {
        return ""
    }

    let numberArray = (0...members * totalCount).reduce("") { partialResult, num in
        partialResult + String(num, radix: nBinary, uppercase: true)
    }.map{ String($0) }

    var answer = ""

    for amount in 0..<totalCount {
        let index = (amount * members) + (startPoint - 1)
        answer += numberArray[index]
    }

    return answer
}

print(solution(2, 4, 2, 1))
