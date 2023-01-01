//
//  main.swift
//  MockExam
//
//  Created by Derrick kim on 2023/01/01.
//

import Foundation

// 1번 수포자가 찍는 방식: 1, 2, 3, 4, 5, 1, 2, 3, 4, 5, ...
// 2번 수포자가 찍는 방식: 2, 1, 2, 3, 2, 4, 2, 5, 2, 1, 2, 3, 2, 4, 2, 5, ...
// 3번 수포자가 찍는 방식: 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, 3, 3, 1, 1, 2, 2, 4, 4, 5, 5, ...

// 1, 2, 3, 4, 5 - 5개
// 2, 1, 2, 3, 2, 4, 2, 5 - 8개
// 3, 3, 1, 1, 2, 2, 4, 4, 5, 5 - 10개

func solution(_ answers:[Int]) -> [Int] {
    if answers.count == 0 {
        return [0]
    }

    let firstPerson: [Int] = [1, 2, 3, 4, 5]
    let secondPerson: [Int] = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdPerson: [Int] = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]

    var firstPersonScore = 0
    var secondPersonScore = 0
    var thirdPersonScore = 0

    for index in 0..<answers.count {
        let firstIndex = index % firstPerson.count
        let secondIndex = index % secondPerson.count
        let thirdIndex = index % thirdPerson.count

        if firstPerson[firstIndex] == answers[index] {
            firstPersonScore += 1
        }

        if secondPerson[secondIndex] == answers[index] {
            secondPersonScore += 1
        }

        if thirdPerson[thirdIndex] == answers[index] {
            thirdPersonScore += 1
        }
    }

    print(firstPersonScore, secondPersonScore, thirdPersonScore)

    let resultDic: [Int: Int] = [1: firstPersonScore, 2: secondPersonScore, 3: thirdPersonScore]
    let maxValue = resultDic.values.max()

    return resultDic.filter{ $0.value == maxValue }.keys.sorted()
}

print(solution([1,2,3,4,5]))
print(solution([1,3,2,4,2]))
print(solution([1,3,2,4,2, 1, 2, 4, 5, 5, 2, 1]))
