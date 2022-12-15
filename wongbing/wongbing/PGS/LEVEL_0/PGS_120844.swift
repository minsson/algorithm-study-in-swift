//
//  PGS_120844.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/11.
// https://school.programmers.co.kr/learn/courses/30/lessons/120844
// 3분

import Foundation

func answer_PGS_배열회전시키기(_ numbers:[Int], _ direction:String) -> [Int] {
    var numbersTmp = numbers
    if direction == "right" {
        let last = numbersTmp.popLast()!
        numbersTmp.insert(last, at: 0)
    } else {
        let first = numbersTmp.removeFirst()
        numbersTmp.append(first)
    }
    return numbersTmp
}
