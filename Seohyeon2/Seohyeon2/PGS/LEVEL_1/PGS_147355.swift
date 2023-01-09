//
//  PGS_147355.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2023/01/07.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/147355

import Foundation

func answer_PGS_크기가_작은_부분_문자열_147355() {
    func solution(_ t:String, _ p:String) -> Int {
        let numbers = t.map { String($0) }
        var partString = [p]
        var result = 0
        
        if p.count > 1 {
            for index in (0...(t.count-p.count)) {
                partString.append(Array(numbers[index...index+(p.count-1)]).joined())
            }
        } else {
            partString = t.map{String($0)} + [p]
        }
        
        partString.sort()
        
        for index in 0..<partString.count {
            if partString[index] == p {
                result = index
            }
        }
        return result
    }
}
