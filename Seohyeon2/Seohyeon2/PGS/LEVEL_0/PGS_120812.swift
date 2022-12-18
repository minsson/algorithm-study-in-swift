//
//  PGS_120812.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120812

import Foundation

func answer_PGS_최빈값_구하기_120812() {
    func solution(_ array:[Int]) -> Int {
        var dic = [Int: Int]()
        var count = 0
        var result = 0
        
        for i in array {
            if var value = dic[i] {
                value += 1
                dic[i] = value
            } else {
                dic[i] = 1
            }
        }
        
        for i in dic {
            if i.value == dic.values.max()! {
                count += 1
                result = i.key
            }
        }
        
        return count > 1 ? -1 : result
    }
}
