//
//  PGS_87390.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/04.
// https://school.programmers.co.kr/learn/courses/30/lessons/87390
// 1시간 10분
// level 2

import Foundation

func answer_PGS_n제곱배열_자르기(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let arr = Array<Int>(Int(left)...Int(right))
    var result = [Int]()
    arr.forEach { ele in
        result.append(translateIndexToValue(index: ele, in: n))
    }
    return result
}

func translateIndexToValue(index: Int, in n: Int) -> Int {
    let i = index / n
    let j = index % n
    return max(i,j) + 1
}
