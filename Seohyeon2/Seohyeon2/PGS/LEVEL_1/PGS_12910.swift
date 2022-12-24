//
//  PGS_12910.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12903

import Foundation

func answer_PGS_가운데_글자_가져오기_12903() {
    func solution(_ s:String) -> String {
        let arr = s.map { String($0) }
        if arr.count % 2 == 0 {
            return arr[(s.count / 2)-1] + arr[(s.count / 2)]
        } else {
            return arr[(s.count / 2)]
        }
    }
}
