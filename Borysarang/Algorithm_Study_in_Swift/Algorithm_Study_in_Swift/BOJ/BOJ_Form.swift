//
//  BOJ_Form.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/11/06.
//

import Foundation

func answer_문제이름_번호() {
    let testCount =  Int(readLine()!)!
    var result: [String] = []
    
    for caseCount in 0..<testCount {
        let numberS =  readLine()!.components(separatedBy: " ")
        result.append(problem_case())
    }
    for a in 0..<testCount {
        print(result[a])
    }
}

func problem_case() -> String {
    return ""
}
