//
//  BOJ_2566.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/11/03.
//  https://www.acmicpc.net/problem/2566

import Foundation

func answer_BOJ_최댓값_2566() {
    var matrix = [[Int]]()

    var maxNumber = 0
    var answer = [0,0]

    for _ in (0...8) {
        let input = readLine()!.split(separator: " ").map {
            Int(String($0))!
        }
        
        matrix.append(input)
    }

    for row in (0...8) {
        for col in (0...8){
            if maxNumber <= matrix[row][col] {
                maxNumber = matrix[row][col]
                answer[0] = row + 1
                answer[1] = col + 1
            }
        }
    }

    print(maxNumber)
    print(answer[0], answer[1])
}
