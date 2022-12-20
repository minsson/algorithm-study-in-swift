//
//  main.swift
//  padoban_sequence
//
//  Created by Derrick kim on 2022/12/10.
//

import Foundation

func solution() {
    guard let caseCount = readLine(),
          let count = Int(caseCount),
            count >= 1, count <= 100 else {
        return
    }

    var testCase: [Int] = []

    for _ in 0..<count {
        let number = Int(readLine()!)!
        testCase.append(number)
    }

    var dp: [Int] = [1, 1, 1, 2, 2]

    for index in 0..<95 {
        dp.append(dp[index] + dp[index + 4])
    }

    for number in testCase {
        print(dp[number - 1])
    }
}

solution()
