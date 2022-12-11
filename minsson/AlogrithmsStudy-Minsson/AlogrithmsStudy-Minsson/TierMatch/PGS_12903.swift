//
//  PGS_12903.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/12/11.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12903

import Foundation

func answer_PGS_가운데글자가져오기_solution(_ s:String) -> String {
    let charArray = Array(s)
    let count = charArray.count
    var result = ""
    
    if count % 2 == 1 { // 홀수
        result = String(charArray[count / 2])
    } else { // 짝수
        result = String(charArray[count / 2 - 1]) + String(charArray[count / 2])
    }
    
    return result
}
