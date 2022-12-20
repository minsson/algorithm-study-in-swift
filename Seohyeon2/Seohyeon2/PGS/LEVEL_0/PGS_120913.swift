//
//  PGS_120913.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120913

import Foundation

func answer_PGS_잘라서_배열로_저장하기_120913() {
    func solution(_ my_str:String, _ n:Int) -> [String] {
        var result = [String]()
        let arr = my_str.map{ String($0) }
        let quotient = my_str.count/n
        
        for i in 0..<quotient {
            result.append((arr[(n*i)..<n*(i+1)]).joined(separator:""))
        }
        
        if (quotient*n) < my_str.count {
            result.append(arr[(quotient*n)...].joined(separator:""))
        }
        
        return result
    }
}
