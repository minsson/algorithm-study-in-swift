//
//  PGS_120843.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://school.programmers.co.kr/learn/courses/30/lessons/120843
// 5분

import Foundation

func answer_PGS_공던지기(_ numbers:[Int], _ k:Int) -> Int {
    let index = 2*(k-1)
    let maxIndex = numbers.count
    let resultIndex = index % maxIndex
    return numbers[resultIndex]
}
