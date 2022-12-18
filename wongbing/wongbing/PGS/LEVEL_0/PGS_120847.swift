//
//  PGS_120847.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120847
// 최댓값 만들기(1)
// 2분

func answer_PGS_최댓값만들기1(_ numbers:[Int]) -> Int {
    var list = numbers.sorted()
    let x = list.popLast()!
    let y = list.popLast()!
    return x*y
}
