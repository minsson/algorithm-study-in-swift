//
//  PGS_87390.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/05.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/87390

import Foundation

func answer_n제곱_배열_자르기_87390() {
    func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
        var answer = [Int]()
        
        for i in Int(left)...Int(right) {
            let row = i / n
            let col = i % n
            answer.append(max(row, col) + 1)
        }
        
        return answer
    }
}
