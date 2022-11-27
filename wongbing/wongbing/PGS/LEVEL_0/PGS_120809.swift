//
//  PGS_배열두배만들기.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120809

func answer_PGS_배열두배만들기() {
    
    func solution(_ numbers:[Int]) -> [Int] {
        return numbers.map { $0 * 2}
    }
}
