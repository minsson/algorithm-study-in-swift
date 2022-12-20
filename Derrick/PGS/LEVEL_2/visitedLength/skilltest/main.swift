//
//  main.swift
//  skilltest
//
//  Created by Derrick kim on 2022/12/17.
//

import Foundation

func solution(_ dirs:String) -> Int {
    // U 위로 - Y
    // D 아래 - Y
    // R 오른쪽 - X
    // L 왼쪽 - X
    // [0,1], [-1,1], [-1, 2], [0, 2], [1, 2], [1, 1] [0, 1]

    var currentPoint = (0, 0)
    var answer: Set<String> = []

    let direction = dirs.map { String($0) }

    for order in direction {
        var point = currentPoint
        var rowPoint = point.0
        var columnPoint = point.1

        switch String(order) {
        case "U":
            columnPoint += 1
        case "D":
            columnPoint += -1
        case "R":
            rowPoint += 1
        case "L":
            rowPoint += -1
        default:
            break
        }

        if columnPoint > 5 || columnPoint < -5 {
            continue
        }

        if rowPoint > 5 || rowPoint < -5 {
            continue
        }

        point.0 = rowPoint
        point.1 = columnPoint

        if !answer.contains("\(point)\(currentPoint)") {
            answer.insert("\(currentPoint)\(point)")
        }

        currentPoint = point
    }

    return answer.count
}

solution("ULURRDLLU")

