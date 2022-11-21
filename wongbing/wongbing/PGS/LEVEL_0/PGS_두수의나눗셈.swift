//
//  PGS_두수의나눗셈.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/19.
// https://school.programmers.co.kr/learn/courses/30/lessons/120806

func answer_PGS_두수의나눗셈() {
    
    func solution(_ num1:Int, _ num2:Int) -> Int {
        let result = Double(num1) / Double(num2)
        return Int(result * 1000)
    }
}
