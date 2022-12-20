//
//  PGS_120863.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120863

import Foundation

func answer_PGS_다항식_더하기_120863() {
    func solution(_ polynomial:String) -> String {
        var num = 0
        var xNum = 0
        let str = polynomial.components(separatedBy: " + ")
        
        str.filter {
            $0.contains("x")
        }.forEach {
            if $0.count > 1 {
                xNum += Int(Array($0.map {String($0)}[0..<$0.count-1]).joined())!
            } else {
                xNum += 1
            }
        }
        
        str.filter {
            !$0.contains("x")
        }.forEach {
            num += Int($0)!
        }
        
        if xNum == 0 {
            return "\(num)"
        } else if num == 0 {
            if xNum == 1 {
                return "x"
            }
            return "\(xNum)x"
        } else {
            if xNum == 1 {
                return "x + \(num)"
            }
            return "\(xNum)x + \(num)"
        }
    }
}
