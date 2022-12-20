//
//  main.swift
//  skillTree
//
//  Created by Derrick kim on 2022/12/18.
//

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    let skillOrder = skill.map{ String($0) }
    let skills = skill_trees.map{ $0.uppercased() }
    var result: [String] = []

    for skill in skills {
        var str = ""
        for word in skill {
            if skillOrder.contains(String(word)) {
                str += String(word)
            }
        }

        result.append(str)
    }

    return result.filter{
        skill.hasPrefix($0)
    }.count
}

print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))
