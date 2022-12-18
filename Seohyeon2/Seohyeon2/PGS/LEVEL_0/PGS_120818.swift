//
//  PGS_120818.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120818

import Foundation

func answer_PGS_옷가게_할인_받기_120818() {
    func solution(_ price:Int) -> Int {
        switch price {
        case 0..<100000:
            return price
            
        case 100000..<300000:
            return Int(Double(price) * 0.95)
            
        case 300000..<500000:
            return Int(Double(price) * 0.9)
            
        default:
            return Int(Double(price) * 0.8)
        }
    }
}
