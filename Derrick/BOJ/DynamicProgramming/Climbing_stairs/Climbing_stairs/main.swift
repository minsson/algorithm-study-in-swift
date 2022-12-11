//
//  main.swift
//  Climbing_stairs
//
//  Created by Derrick kim on 2022/12/10.
//

import Foundation

let number = Int(readLine()!)!

func solution(_ number: Int) -> Int {
    var dp: [Int] = Array(repeating: 0, count: number)
    var heightArray: [Int] = []

    for _ in 0..<number {
        heightArray.append(Int(readLine()!)!)
    }

    if number == 1 {
        return heightArray[0]
    } else if number == 2 {
        return heightArray[0] + heightArray[1]
    }
    // 0번 계단 오르면 2번 계단
    // 1번 계단 + 2번 계단 
    else if number == 3 {
        return max(heightArray[0] + heightArray[2] , heightArray[1] + heightArray[2])
    }
    // 1 번째 dp에서 세번째 + 마지막 계단
    // 2 번째 dp에서 마지막 계단
    else if number == 4 {
        dp[0] = heightArray[0]
        dp[1] = heightArray[0] + heightArray[1]
        dp[2] = max(heightArray[0] + heightArray[2] , heightArray[1] + heightArray[2])
        return max(dp[1] + heightArray[3], dp[0] + heightArray[2] + heightArray[3])
    }else {
        dp[0] = heightArray[0]
        dp[1] = heightArray[0] + heightArray[1]
        dp[2] = max(heightArray[0] + heightArray[2] , heightArray[1] + heightArray[2])
        dp[3] = max(dp[0] + heightArray[2] + heightArray[3], dp[1] + heightArray[3])

        for index in 4..<heightArray.count {
            dp[index] = max(dp[index - 3] + heightArray[index - 1] + heightArray[index],
                            dp[index - 2] + heightArray[index])
        }
    }

    return dp[number - 1]
}


print(solution(number))
