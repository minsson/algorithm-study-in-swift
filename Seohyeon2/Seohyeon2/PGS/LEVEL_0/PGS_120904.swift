//
//  PGS_120904.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120904

import Foundation

func answer_PGS_숫자_찾기_120904() {
    func solution(_ num:Int, _ k:Int) -> Int {
        let nums = String(num).map { String($0) }
        
        if nums.contains(String(k)) == false {
            return -1
        }
        
        for i in 0..<nums.count {
            if nums[i] == String(k) {
                return i+1
            }
        }
        
        return -1
    }
}
