//
//  BOJ_1149.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://www.acmicpc.net/problem/1149
// 실버1, 동적프로그래밍
// 1시간 30분

func answer_BOJ_RGB거리() {
    let n = Int(readLine()!)!
    var dp = Array(repeating: [0,0,0], count: n+1)
    var grid = [[Int]]()
    (1...n).forEach { _ in
        let row = readLine()!.split(separator: " ").compactMap { Int($0) }
        grid.append(row)
    }
    
    dp[1] = grid[0]
    for i in 2...n {
        dp[i] = [grid[i-1][0] + min(dp[i-1][1], dp[i-1][2]),
                 grid[i-1][1] + min(dp[i-1][0], dp[i-1][2]),
                 grid[i-1][2] + min(dp[i-1][0], dp[i-1][1])]
    }
    print(dp[n].min()!)
}

