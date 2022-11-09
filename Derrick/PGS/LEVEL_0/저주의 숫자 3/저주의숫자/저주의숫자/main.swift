//
//  main.swift
//  저주의숫자
//
//  Created by Derrick kim on 2022/11/09.
//

import Foundation

func solution(_ n: Int) -> Int {
    var result = [Int]()
    var count = 0
    for number in 1...200 {
        if (number % 3 != 0)
            && (((number % 100) / 10) != 3)
            && (number / 10 != 3)
            && (number % 10) != 3 {
            result.append(number)

            if count == n {
                return result[n-1]
            }

            count += 1
        }
    }

    return 0
}


print(solution(100))
