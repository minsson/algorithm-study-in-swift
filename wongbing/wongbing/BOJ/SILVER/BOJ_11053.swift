//
//  BOJ_11053.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://www.acmicpc.net/problem/11053
// 참고: https://namu.wiki/w/최장%20증가%20부분%20수열
// 실버2, 동적프로그래밍
// 40분

func answer_BOJ_가장긴증가하는부분수열() {
    let n = Int(readLine()!)!
    var list = [0]
    let arr = readLine()!.split(separator: " ").compactMap { Int($0) }
    list += arr
    var dp = Array(repeating: 0, count: n+1)
    for i in 1...n {
        var values = [Int]()
        for j in 0...i {
            if list[j] < list[i] {
                values.append(dp[j])
            }
        }
        if values.count > 0 {
            dp[i] = values.max()! + 1
        }
    }
    print(dp.max()!)
}
