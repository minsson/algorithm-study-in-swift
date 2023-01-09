//
//  PGS_150370.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2023/01/07.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/150370

import Foundation

func answer_PGS_개인정보_수집_유효기간_150370() {
    func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
        var result = [Int]()
        var termsDic = [String: String]()
        for term in terms {
            let temp = term.components(separatedBy: " ")
            termsDic[temp.first!] = temp.last!
        }
        
        for (index, privacy) in privacies.enumerated() {
            let temp = privacy.components(separatedBy: " ")
            let term = termsDic[temp.last!]
            let date = temp.first!.components(separatedBy: ".")
            var day =  Int(date[2])! - 1
            var month = Int(date[1])! + Int(term!)!
            var year = Int(date[0])!
            let todayDate = today.components(separatedBy: ".")
            
            while month > 12 {
                month -= 12
                year += 1
            }
            
            if day < 1 {
                day = 28
                month -= 1
                
                if month < 1 {
                    month = 12
                    year -= 1
                }
            }
            
            if year < Int(todayDate[0])! {
                result.append(index+1)
            } else if year == Int(todayDate[0])! {
                if month < Int(todayDate[1])! {
                    result.append(index+1)
                } else if month == Int(todayDate[1])! {
                    if day < Int(todayDate[2])! {
                        result.append(index+1)
                    }
                }
            }
        }
        return result
    }
}
