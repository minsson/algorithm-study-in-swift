//
//  PGS_120876.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120876

import Foundation

func answer_PGS_겹치는_선분의_길이_120876() {
    func makelineArr(start: Int, end: Int)-> [Int] {
        var result = [Int]()
        for i in start...end {
            result.append(i)
        }
        return result
    }
    
    func getOverlap(a: [Int], b: [Int]) -> [Int] {
        var result = [Int]()
        var isOn = false
        let less = (a.count >= b.count) ? b : a
        let more = (a.count >= b.count) ? a : b
        
        for i in 0..<less.count {
            for j in 0..<more.count {
                if less[i] == more[j] && (isOn == false) {
                    isOn = true
                } else if less[i] == more[j] && (isOn == true) {
                    result.append(less[i])
                }
            }
        }
        
        return result
    }
    
    func solution(_ lines:[[Int]]) -> Int {
        var result = [Int]()
        let line1 = makelineArr(start: lines[0][0], end: lines[0][1])
        let line2 = makelineArr(start: lines[1][0], end: lines[1][1])
        let line3 = makelineArr(start: lines[2][0], end: lines[2][1])
        
        result += getOverlap(a: line1, b: line2)
        result += getOverlap(a: line1, b: line3)
        result += getOverlap(a: line2, b: line3)
        result = Array(Set(result)).sorted()
        
        return result.count
    }
}
