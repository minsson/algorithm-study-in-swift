//
//  BOJ_2579.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://www.acmicpc.net/problem/2579
// 실버3, 동적프로그래밍

func answer_BOJ_계단오르기_2579() {
    let input = Int(readLine()!)!
    var pointList = [0]
    (1...input).forEach { _ in
        let point = Int(readLine()!)!
        pointList.append(point)
    }
    var dp = Array(repeating: 0, count: input+1)
    for i in 1...input {
        if i == 1 {
            dp[1] = (pointList[1])
        } else if i == 2 {
            dp[2] = (pointList[1] + pointList[2])
        } else if i == 3 {
            dp[3] = max(pointList[3]+pointList[1], pointList[3]+pointList[2])
        } else {
            dp[i] = max(pointList[i] + pointList[i-1] + dp[i-3], pointList[i] + dp[i-2])
        }
    }
    print(dp[input])
}
