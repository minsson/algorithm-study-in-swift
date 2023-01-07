//
//  PGS_142086.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2023/01/07.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/142086

import Foundation

func answer_PGS_가장_가까운_같은_글자_142086() {
    func solution(_ s:String) -> [Int] {
        let arr = s.map{ String($0) }
        var alphaDic = [String: Int]()
        var result = [Int]()
        
        for index in 0..<arr.count {
            if let prev = alphaDic[arr[index]] {
                result.append(index-prev)
            } else {
                result.append(-1)
            }
            
            alphaDic[arr[index]] = index
        }
        
        return result
    }
}
