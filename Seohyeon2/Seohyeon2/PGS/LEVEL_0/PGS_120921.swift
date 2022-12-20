//
//  PGS_120921.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120921

import Foundation

func answer_PGS_문자열_밀기_120921() {
    func solution(_ A:String, _ B:String) -> Int {
        var arr = A.map { String($0) }
        
        for i in 0...arr.count-1 {
            if arr.joined(separator: "") == B {
                return i
            }
            
            let last = String(arr.removeLast())
            arr.insert(last, at: 0)
        }
        
        return -1
    }
}
