//
//  main.swift
//  openChatting
//
//  Created by Derrick kim on 2022/11/29.
//

import Foundation

func solution(_ record:[String]) -> [String] {
    var nickName: [String: String] = [:]

    let recordArray = record.map{ $0.split(separator: " ") }
    var result: [String] = []

    for userInfo in recordArray {
        if userInfo.count > 2 {
            nickName[String(userInfo[1])] = String(userInfo[2])
        }
    }

    for userInfo in recordArray {
        let userNickName = nickName[String(userInfo[1])]!

        if userInfo[0] == "Enter" {
            result.append(userNickName + "님이 들어왔습니다.")
        } else if userInfo[0] == "Leave" {
            result.append(userNickName + "님이 나갔습니다.")
        }
    }

    return result
}

print(solution(["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"]))

