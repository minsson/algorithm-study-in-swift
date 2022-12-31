//
//  PGS_120921.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/24.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120921

import Foundation

func answer_PSG_문자열밀기(_ A:String, _ B:String) -> Int {
    var count = 0
    var word = A
    
    while count < A.count {
        if word == B {
            break
        }
        
        let last = word.popLast()!
        word = String(last) + word
        count += 1
    }
    
    return count == A.count ? -1 : count
}
