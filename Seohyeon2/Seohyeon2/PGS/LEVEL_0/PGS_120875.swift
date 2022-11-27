//
//  PGS_120875.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/13.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120875

import Foundation

func answer_PGS_평행_120875() {
    func solution(_ dots:[[Int]]) -> Int {
        var gradient = [Double]()

        for i in (0...2) {
            for j in (i+1...3) {
                let x = abs(dots[j][0] - dots[i][0])
                let y = abs(dots[j][1] - dots[i][1])
                gradient.append(Double(y) / Double(x))
            }
        }
        
        if gradient.count != Set(gradient).count {
            return 1
        }

        return 0
    }
}
