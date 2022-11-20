//
//  PGS_양꼬치.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120830

func answer_PGS_양꼬치() {
    
    func solution(_ n:Int, _ k:Int) -> Int {
        let ten = n / 10
        return (12000 * n) + (2000 * (k - ten))
    }
}
