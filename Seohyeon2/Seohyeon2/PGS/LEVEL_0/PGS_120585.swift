//
//  PGS_120585.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120585

import Foundation

func answer_PGS_머쓱이보다_키_큰_사람_120585() {
    func solution(_ array:[Int], _ height:Int) -> Int {
        var allHeight = array + [height]
        allHeight.sort()

        guard let meossgNum = allHeight.lastIndex(of: height) else {
            return 0
        }
        let result = array.count - meossgNum
        
        return result
    }
}
