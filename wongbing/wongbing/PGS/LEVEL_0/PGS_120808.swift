//
//  PGS_분수의덧셈.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/19.
// https://school.programmers.co.kr/learn/courses/30/lessons/120808

func answer_PGS_분수의덧셈() {
    
    func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
        var denum = (denum1*num2) + (denum2*num1)
        var num = num1 * num2
        var leastCommonMultiple = 0
        for i in 1...[denum, num].min()! {
            if denum % i == 0 && num % i == 0 {
                leastCommonMultiple = i
            }
        }
        
        return [denum/leastCommonMultiple, num/leastCommonMultiple]
    }
}
