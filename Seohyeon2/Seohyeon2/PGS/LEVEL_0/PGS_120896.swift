//
//  PGS_120896.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120896

import Foundation

func answer_PGS_한_번만_등장한_문자_120896() {
    func solution(_ s:String) -> String {
        var result = [String]()
        let arr = s.map { String($0) }
        let strElement = Set(arr)
        
        strElement.forEach { element in
            let elements = arr.filter {
                $0 == element
            }
                            
            if elements.count == 1 {
                result.append(element)
            }
        }
        
        return String(result.joined(separator: "").sorted())
    }
}
