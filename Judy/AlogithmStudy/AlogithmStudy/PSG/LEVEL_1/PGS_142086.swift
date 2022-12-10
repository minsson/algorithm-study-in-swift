//
//  PGS_142086.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/10.
//  https://school.programmers.co.kr/learn/courses/30/lessons/142086

func answer_PGS_가장가까운글자(_ s:String) -> [Int] {
    let arr = s.map { String($0) }
    var result: [Int] = []
    
    for i in 0..<arr.count {
        for j in stride(from: i-1, to: -1, by: -1) {
            if arr[i] == arr[j] {
                result.append(i-j)
                break
            }
        }
        
        if result.count != i + 1 {
            result.append(-1)
        }
    }
    
    return result
}
