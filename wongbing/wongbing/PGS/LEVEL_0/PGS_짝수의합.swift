//
//  PGS_짝수의합.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120831

func answer_PGS_짝수의합() {
    
    func solution(_ n:Int) -> Int {
        var result = 0
        for i in 1... {
            if 2 * i <= n {
                result += 2 * i
            } else {
                break
            }
        }
        return result
    }
}
