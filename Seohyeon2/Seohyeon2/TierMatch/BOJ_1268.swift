//
//  BOJ_1268.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2023/01/22.
//
// https://www.acmicpc.net/problem/1268

import Foundation

func answer_BOJ_임시_반장_정하기_1268() {
    let students = Int(readLine()!)!
    var studentsDic = [String: [Int]]()
    var grades = [[String]]()
    var resultDic = [String: Int]()

    for i in 0..<students {
        grades.append(readLine()!.components(separatedBy: " "))
        studentsDic[String(i+1)] = Array(repeating: 0, count: students)
    }

    for student in 0..<grades.count-1 {
        for grade in 0..<5 {
            for nextStudent in (student+1)..<grades.count {
                if grades[student][grade] == grades[nextStudent][grade] {
                    studentsDic[String(student+1)]?[nextStudent] = 1
                    studentsDic[String(nextStudent+1)]?[student] = 1
                }
            }
        }
    }


    for i in 0..<students {
        resultDic[String(i+1)] = studentsDic[String(i+1)]?.filter({ $0 == 1 }).count
    }


    let result = resultDic.sorted { first, second in
        if first.value == second.value {
            return first.key < second.key
        }
        
        return (first.value > second.value)
    }

    print(result[0].key)
}
