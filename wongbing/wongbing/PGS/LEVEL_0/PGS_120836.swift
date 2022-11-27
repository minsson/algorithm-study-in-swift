//
//  PGS_120836.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/25.
// https://school.programmers.co.kr/learn/courses/30/lessons/120836
// 5분

func answer_PSG_순서쌍의개수(_ n:Int) -> Int {
    var count = 0
    for i in 1... {
        guard i <= n else { break }
        if n % i == 0 {
            count += 1
        }
    }
    return count
}
