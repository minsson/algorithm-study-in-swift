//
//  main.swift
//  filltile3
//
//  Created by Derrick kim on 2022/11/24.
//

import Foundation

// 끝에 가로 길이가 1인 경우 2가지 나온다
// 끝에 가로 길이가 2인 경우 3가지 나온다
// 끝에 가로 길이가 4인 경우 2개씩 더해진다.

let number = Int(readLine()!)!
var dp = Array(repeating: 0, count: number + 1)

if number == 0 { print(1) }
if number == 1 { print(2) }
if number == 2 { print(7) }
else {
    dp[0] = 1
    dp[1] = 2
    dp[2] = 7

    var result = (dp[number - 1] * 2) + (dp[number - 2] * 3)

    for index in 3...number {
        result += (2 * dp[number - index]) % 1000000007
    }

    print(result % 1000000007)
}
