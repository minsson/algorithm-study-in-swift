//
//  PGS_120889.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120889

import Foundation

func answer_PGS_삼각형의_완성조건_1_120889() {
    func solution(_ sides:[Int]) -> Int {
        let sortedSides = sides.sorted()
        if sortedSides[0] + sortedSides[1] > sortedSides[2] {
            return 1
        }
        return 2
    }
}
