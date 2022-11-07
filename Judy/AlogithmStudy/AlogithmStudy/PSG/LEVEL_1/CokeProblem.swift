//
//  CokeProblem.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/02.
//  https://school.programmers.co.kr/learn/courses/30/lessons/132267

func cokeProblem(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var total = n
    var sum = 0

    while total >= a {
        sum += (total / a) * b
        total = (total / a) * b + total % a
    }
    
    return sum
}
