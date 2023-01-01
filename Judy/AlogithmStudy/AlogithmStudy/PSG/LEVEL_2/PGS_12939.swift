//
//  PGS_12939.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/01.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12939

import Foundation

func answer_PGS_최댓값과최솟값(_ s:String) -> String {
    let sList = s.components(separatedBy: " ").compactMap { Int($0) }
    let min = sList.min()!
    let max = sList.max()!
    
    return "\(min) \(max)"
}
