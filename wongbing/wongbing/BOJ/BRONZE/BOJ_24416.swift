//
//  BOJ_24416.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://www.acmicpc.net/problem/24416
// 브론즈1 , 동적프로그래밍
// 11분

func answer_BOJ_알고리즘수업_피보나치수1() {
    let n = Int(readLine()!)!
    var fibonacciCount = 0
    func fibonacci(n: Int) -> Int {
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 0
        dp[1] = 1
        dp[2] = 1
        for i in 3...n {
            dp[i] = dp[i-1] + dp[i-2]
            fibonacciCount += 1
        }
        return dp[n]
    }
    
    print(fibonacci(n: n))
    print(fibonacciCount)
}
