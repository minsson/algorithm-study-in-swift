//
//  PGS_49993.swift
//  wongbing
//
//  Created by 이원빈 on 2022/12/18.
// https://school.programmers.co.kr/learn/courses/30/lessons/49993
// 레벨2
// 스킬트리

import Foundation

func answer_PGS_스킬트리(_ skill:String, _ skill_trees:[String]) -> Int {
    let skillList = Array(skill).map { String($0) }
    var count = 0
    for skillTree in skill_trees {
        var historyList = [Int]()
        for skill in skillTree {
            if skillList.contains(String(skill)) {
                let skillIndex = skillList.firstIndex(of: String(skill))!
                historyList.append(Int(skillIndex))
            }
        }
        if historyList == Array<Int>(0..<historyList.count) {
            count += 1
        }
    }
    return count
}
