//
//  PGS_42840.swift
//  wongbing
//
//  Created by 이원빈 on 2023/01/01.
// https://school.programmers.co.kr/learn/courses/30/lessons/42840
// 모의고사
// 15분

func answer_PGS_모의고사(_ answers:[Int]) -> [Int] {
    let first = [1,2,3,4,5]
    let second = [2,1,2,3,2,4,2,5]
    let third = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var firstIndex: Int = 0 {
        didSet {
            if firstIndex > 4 {
                firstIndex = 0
            }
        }
    }
    var secondIndex: Int = 0 {
        didSet {
            if secondIndex > 7 {
                secondIndex = 0
            }
        }
    }
    var thirdIndex: Int = 0 {
        didSet {
            if thirdIndex > 9 {
                thirdIndex = 0
            }
        }
    }
    var firstPoint = 0
    var secondPoint = 0
    var thirdPoint = 0
    answers.forEach { num in
        if num == first[firstIndex] {
            firstPoint += 1
        }
        if num == second[secondIndex] {
            secondPoint += 1
        }
        if num == third[thirdIndex] {
            thirdPoint += 1
        }
        firstIndex += 1
        secondIndex += 1
        thirdIndex += 1
    }
    let max = [firstPoint, secondPoint, thirdPoint].max()!
    var result = [Int]()
    if firstPoint == max {
        result.append(1)
    }
    if secondPoint == max {
        result.append(2)
    }
    if thirdPoint == max {
        result.append(3)
    }
    
    return result
}
