//
//  PGS_120894.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120894

import Foundation

func answer_PGS_영어가_싫어요_120894() {
    func solution(_ numbers:String) -> Int64 {
        let arr = numbers.map { String($0) }
        var index = 0
        var result = ""
        
        while index < arr.count {
            switch arr[index...index+1].joined(separator: "") {
            case "on":
                index += 3
                result += "1"
                break
            case "tw":
                index += 3
                result += "2"
                break
            case "th":
                index += 5
                result += "3"
                break
            case "fo":
                index += 4
                result += "4"
                break
            case "fi":
                index += 4
                result += "5"
                break
            case "si":
                index += 3
                result += "6"
                break
            case "se":
                index += 5
                result += "7"
                break
            case "ei":
                index += 5
                result += "8"
                break
            case "ni":
                index += 4
                result += "9"
                break
            case "ze":
                index += 4
                result += "0"
                break
            default:
                break
            }
        }
        return Int64(result) ?? 0
    }
}
