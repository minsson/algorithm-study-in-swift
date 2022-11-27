//
//  PGS_120860.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/20.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120860

import Foundation

func answer_PGS_직사각형_넓이_구하기_120860() {
    func solution(_ dots:[[Int]]) -> Int {
        let dot = dots[0]
        var width = 0
        var height = 0
        
        for i in (0..<dots.count) {
            if i != 0 {
                if dot[0] == dots[i][0] {
                    height = abs(dot[1] - dots[i][1])
                }
                if dot[1] == dots[i][1] {
                    width = abs(dot[0] - dots[i][0])
                }
            }
        }
        return width * height
    }
}
