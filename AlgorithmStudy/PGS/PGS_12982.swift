//
//  PGS_예산.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/27.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12982

import Foundation

func answer_PGS_12982(_ d:[Int], _ budget:Int) -> Int {
    var budget = budget
    var count = 0

    for i in d.sorted() {
        if budget - i >= 0 {
            count += 1
            budget -= i
        } else {
            break
        }
    }
    return count
}



// [d]: 부서당 필요금액
// budget: 예산
// 최대 몇 개의 부서에다가 물품지원이 가능한가?
// 제일 적게 드는 부서부터 오름차순으로 지원해주면 가장 많이 해줄 수 있음
