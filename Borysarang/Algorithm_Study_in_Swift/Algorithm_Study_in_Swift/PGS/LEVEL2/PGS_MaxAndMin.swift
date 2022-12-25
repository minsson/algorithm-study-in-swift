//
//  PGS_MaxAndMin.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/25.
//  https://school.programmers.co.kr/learn/courses/30/lessons/12939
//

import Foundation

func answer_최대값과최소값_12939() {
    let testInput: [String] = ["-1 -2 -3 -4", "1 2 3 4", "-1 -1"]
    testInput.forEach { input in
        print(solutionForm12939(input))
    }
}

func solutionForm12939(_ input: String) -> String {
    let convertedIntArr = input.components(separatedBy: " ").compactMap({Int($0)})
    return "\(convertedIntArr.min()!) \(convertedIntArr.max()!)"
}

