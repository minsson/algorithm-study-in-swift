//
//  PGS_120824.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120824

import Foundation

func answer_PGS_짝수_홀수_개수_120824() {
    func solution(_ num_list:[Int]) -> [Int] {
        let even = num_list.filter {
           $0 % 2 == 0
        }
        let odd = num_list.filter {
           $0 % 2 == 1
        }
        
        return [even.count, odd.count]
    }
}
