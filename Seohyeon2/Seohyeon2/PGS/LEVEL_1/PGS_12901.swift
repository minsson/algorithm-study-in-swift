//
//  PGS_12901.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12901

import Foundation

func answer_PGS_2016년_12901() {
    func solution(_ a:Int, _ b:Int) -> String {
        let day = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
        let month = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        var days = b
        
        for i in 0..<a-1 {
            days += month[i]
        }
        
        if (days % 7) == 0 {
            return day[6]
        }
        
        return day[(days % 7)-1]
    }
}
