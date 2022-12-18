//
//  PGS_120834.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120834

import Foundation

func answer_PGS_외계행성의_나이_120834() {
    func solution(_ age:Int) -> String {
        let alienAge = [
            "0": "a",
            "1": "b",
            "2": "c",
            "3": "d",
            "4": "e",
            "5": "f",
            "6": "g",
            "7": "h",
            "8": "i",
            "9": "j"
        ]
        var result = ""
        
        for i in String(age) {
            result += alienAge[String(i)]!
        }
        
        return result
    }
}
