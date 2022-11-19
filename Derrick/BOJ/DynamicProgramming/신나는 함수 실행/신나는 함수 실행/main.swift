//
//  main.swift
//  신나는 함수 실행
//
//  Created by Derrick kim on 2022/11/19.
//

import Foundation

//if a <= 0 or b <= 0 or c <= 0, then w(a, b, c) returns:
//    1
//
//if a > 20 or b > 20 or c > 20, then w(a, b, c) returns:
//    w(20, 20, 20)
//
//if a < b and b < c, then w(a, b, c) returns:
//    w(a, b, c-1) + w(a, b-1, c-1) - w(a, b-1, c)
//
//otherwise it returns:
//    w(a-1, b, c) + w(a-1, b-1, c) + w(a-1, b, c-1) - w(a-1, b-1, c-1)

var numberArray: [[[Int]]] = Array(repeating: Array(repeating: Array(repeating: 0, count:101), count: 101),  count: 101)

func solution(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if a <= 0 || b <= 0 || c <= 0 {
        return 1
    }

    if a > 20 || b > 20 || c > 20 {
        return solution(20, 20, 20)
    }

    if numberArray[a][b][c] != 0 {
        return numberArray[a][b][c]
    }

    if (a < b && b < c) {
        numberArray[a][b][c] = solution(a, b, c - 1) + solution(a, b - 1, c - 1) - solution(a, b-1, c)
    } else {
        numberArray[a][b][c] =  solution(a - 1, b, c) + solution(a - 1, b - 1, c) + solution(a - 1, b, c - 1) - solution(a - 1, b-1, c - 1)
    }

    return numberArray[a][b][c]
}

var numbers = [Int]()
var result = [String]()
while true {
    numbers = readLine()?.split(separator: " ").map { Int($0) } as! [Int]

    if numbers[0] == -1 && numbers[1] == -1 && numbers[2] == -1 {
        break
    }

    result.append("w(\(numbers[0]), \(numbers[1]), \(numbers[2])) = \(solution(numbers[0], numbers[1], numbers[2]))")
}

for answer in result {
    print(answer)
}

//1 1 1
//2 2 2
//10 4 6
//50 50 50
//-1 7 18
//-1 -1 -1
