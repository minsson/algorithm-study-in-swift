//
//  StringInString.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/21.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let result = str1.contains(str2) ? 1 : 2
    return result
}
