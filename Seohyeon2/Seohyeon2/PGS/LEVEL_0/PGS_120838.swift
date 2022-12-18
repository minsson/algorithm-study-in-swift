//
//  PGS_120838.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120838

import Foundation

func answer_PGS_모스부호_1_120838() {
    func solution(_ letter:String) -> String {
        let morse = [
        ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
        "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
        "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
        "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
        "-.--":"y","--..":"z"
        ]
        let result = letter.split(separator: " ").map {
            morse[String($0)]!
        }.joined(separator: "")
        
        return result
    }
}
