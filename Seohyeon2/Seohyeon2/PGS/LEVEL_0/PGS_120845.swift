//
//  PGS_120845.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120845

import Foundation

func answer_PGS_주사위의_개수_120845() {
    func solution(_ box:[Int], _ n:Int) -> Int {
        let result = box.reduce(1) { x, y in
            y/n * x
        }
        return result
    }
}
