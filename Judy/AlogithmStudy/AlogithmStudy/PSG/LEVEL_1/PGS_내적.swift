//
//  DotProduct.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/02.
//  https://school.programmers.co.kr/learn/courses/30/lessons/70128


func dotProduct(_ a:[Int], _ b:[Int]) -> Int {
    var result = 0

    for (aa, bb) in zip(a, b) {
        result += aa * bb
    }

    return result
}
