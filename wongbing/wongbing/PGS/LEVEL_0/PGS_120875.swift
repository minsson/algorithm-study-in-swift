//
//  PGS_120875.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/03.
// https://school.programmers.co.kr/learn/courses/30/lessons/120875
// 18분

func answer_PGS_평행(_ dots:[[Int]]) -> Int {
    var pairs = [(0,1,2,3), (0,2,1,3), (0,3,1,2)]
    for pair in pairs {
        let dx1 = dots[pair.0][0] - dots[pair.1][0]
        let dy1 = dots[pair.0][1] - dots[pair.1][1]
        let compare1 = Double(dy1) / Double(dx1)

        let dx2 = dots[pair.2][0] - dots[pair.3][0]
        let dy2 = dots[pair.2][1] - dots[pair.3][1]
        let compare2 = Double(dy2) / Double(dx2)

        if compare1 == compare2 {
            return 1
        }
    }
    return 0
}
