//
//  PGS_120839.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/03.
// https://school.programmers.co.kr/learn/courses/30/lessons/120839
// 4분

func answer_PGS_가위바위보(_ rsp:String) -> String {
    var result = ""
    rsp.forEach { char in
        let current = String(char)
        switch current {
        case "0":
            result += "5"
        case "2":
            result += "0"
        case "5":
            result += "2"
        default:
            return
        }
    }
    return result
}
