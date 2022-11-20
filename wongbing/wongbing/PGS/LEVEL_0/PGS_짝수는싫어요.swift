//
//  PGS_짝수는싫어요.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120813

func answer_PGS_짝수는싫어요() {
    
    func solution(_ n:Int) -> [Int] {
        var arr = [Int]()
        for i in 0... {
            let odd = 1 + 2*i
            if odd <= n {
                arr.append(odd)
            } else {
                break
            }
        }
        return arr
    }
}
