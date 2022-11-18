//
//  main.swift
//  filltile
//
//  Created by Derrick kim on 2022/11/18.
//

import Foundation

let number = Int(String(readLine()!))!
var dp = Array(repeating: 0 ,count: 31)

dp[0] = 1
dp[2] = 3

for i in stride(from: 4, through: number, by: 1){
    dp[i] = dp[i - 2] * 3

    for j in  stride(from: 4, through: i, by: 2){
        dp[i] += dp[i - j] * 2
    }

}

print(dp[number])
