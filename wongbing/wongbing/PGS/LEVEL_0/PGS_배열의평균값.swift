//
//  PGS_배열의평균값.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120817

func answer_PGS_배열의평균값() {
    
    func solution(_ numbers:[Int]) -> Double {
        let total = Double(numbers.reduce(0, +))
        let avg = total / Double(numbers.count)
        return avg
    }
}
