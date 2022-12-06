//
//  PGS_120956.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/03.
// https://school.programmers.co.kr/learn/courses/30/lessons/120956
// 10분

import Foundation

func answer_PGS_옹알이1(_ babbling:[String]) -> Int {
    var result = 0
    babbling.forEach { ele in
        var testEle = ele
        testEle = testEle.replacingOccurrences(of: "aya", with: "1")
        testEle = testEle.replacingOccurrences(of: "ye", with: "2")
        testEle = testEle.replacingOccurrences(of: "woo", with: "3")
        testEle = testEle.replacingOccurrences(of: "ma", with: "4")
        if checkDuplication(str: testEle) {
            result += 1
        }
    }
    return result
}

func checkDuplication(str: String) -> Bool {
    guard Int(str) != nil else { return false }
    var temp = ""
    for i in str {
        if String(i) == temp {
            return false
        } else {
            temp = String(i)
        }
    }
    return true
}
