//
//  main.swift
//  SearchingRank
//
//  Created by Derrick kim on 2022/12/23.
//

//코딩테스트 참여 개발언어 항목에 cpp, java, python 중 하나를 선택해야 합니다.
//지원 직군 항목에 backend와 frontend 중 하나를 선택해야 합니다.
//지원 경력구분 항목에 junior와 senior 중 하나를 선택해야 합니다.
//선호하는 소울푸드로 chicken과 pizza 중 하나를 선택해야 합니다.

//코딩테스트에 python으로 참여했으며, frontend 직군을 선택했고, senior 경력이면서, 소울푸드로 chicken을 선택한 사람 중 코딩테스트 점수를 100점 이상 받은 사람은 모두 몇 명인가?
//코딩테스트에 cpp로 참여했으며, senior 경력이면서, 소울푸드로 pizza를 선택한 사람 중 코딩테스트 점수를 100점 이상 받은 사람은 모두 몇 명인가?
//backend 직군을 선택했고, senior 경력이면서 코딩테스트 점수를 200점 이상 받은 사람은 모두 몇 명인가?
//소울푸드로 chicken을 선택한 사람 중 코딩테스트 점수를 250점 이상 받은 사람은 모두 몇 명인가?
//코딩테스트 점수를 150점 이상 받은 사람은 모두 몇 명인가?

// * [조건]을 만족하는 사람 중 코딩테스트 점수를 X점 이상 받은 사람은 모두 몇 명인가?

import Foundation

func solution(_ info:[String], _ query:[String]) -> [Int] {
    var dictionary: [String: [Int]] = [:]
    var result: [Int] = []

    for information in info {
        let person = information.split(separator: " ").map{ String($0) }
        let computerLanaguages = [person[0], "-"]
        let jobPostions = [person[1], "-"]
        let levels = [person[2], "-"]
        let soulFoods = [person[3], "-"]
        let score = Int(person[4])!

        computerLanaguages.forEach { language in
            jobPostions.forEach { position in
                levels.forEach { level in
                    soulFoods.forEach { food in
                        let key = language + position + level + food

                        if dictionary.keys.contains(key) {
                            dictionary[key]?.append(score)
                        } else {
                            dictionary[key] = [score]
                        }
                    }
                }
            }
        }
    }

    for key in dictionary.keys {
        dictionary[key]?.sort(by: <)
    }

    for sentence in query {
        let somePersonInfo = sentence.components(separatedBy: " ").filter{ $0 != "and" }

        let requiredComputerLanaguage = somePersonInfo[0]
        let requiredJobPosition = somePersonInfo[1]
        let requiredLevel = somePersonInfo[2]
        let requiredFood = somePersonInfo[3]
        let requiredScore = Int(somePersonInfo[4])!

        let key = requiredComputerLanaguage + requiredJobPosition + requiredLevel + requiredFood

        guard let scores = dictionary[key] else {
            result.append(0)
            continue
        }

        let count = binarySearch(scores, requiredScore)

        result.append(count)
    }

    return result
}

func binarySearch(_ scores: [Int], _ requiredScore: Int) -> Int {
    var low = 0
    var high = scores.count - 1

    while low <= high {
        var mid = (low + high) / 2
        let guess = scores[mid]

        if guess == requiredScore {
            while mid > 0 && scores[mid - 1] == guess {
                mid -= 1
            }

            return scores.count - mid
        } else if guess > requiredScore {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }

    return scores.count - low
}

print(solution(
    ["java backend junior pizza 150","python frontend senior chicken 210","python frontend senior chicken 150","cpp backend senior pizza 260","java backend junior chicken 80","python backend senior chicken 50"]    ,
    
    ["java and backend and junior and pizza 100","python and frontend and senior and chicken 200","cpp and - and senior and pizza 250","- and backend and senior and - 150","- and - and - and chicken 100","- and - and - and - 150"]        ))
//"java backend junior pizza 150",
//"java and backend and junior and pizza 100",
