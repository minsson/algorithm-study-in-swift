//
//  PGS_120863.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/08.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120863

import Foundation

func answer_PGS_다항식더하기(_ polynomial:String) -> String {
    let question = polynomial.components(separatedBy: " + ")
    var x = 0
    var num = 0
    var result = ""
    
    for element in question {
        if element.last == "x" {
            x += Int(String(element.dropLast())) ?? 1
        } else {
            num += Int(element)!
        }
    }

    if x == 1 {
        result += "x"
    } else if x != 0 {
        result += "\(x)x"
    }
    
    if num != 0 {
        if !result.isEmpty {
           result += " + "
        }
        
        result += "\(num)"
    }
    
    return result
}
