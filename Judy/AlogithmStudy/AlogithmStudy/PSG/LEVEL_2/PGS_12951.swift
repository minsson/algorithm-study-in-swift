//
//  PGS_12951.swift
//  AlogithmStudy
//
//  Created by Judy on 2023/01/19.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12951

import Foundation

func answer_PGS_JadenCase문자열만들기(_ s:String) -> String {
    var result = ""
    var isUpper = true
    
    for word in s {
        if String(word) == " " {
            result += String(word)
            isUpper = true
            continue
        } else if isUpper && Int(String(word)) == nil {
            result += String(word).uppercased()
        } else {
            result += String(word).lowercased()
        }
        
        isUpper = false
    }

    return result
}
