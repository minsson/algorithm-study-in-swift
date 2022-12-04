//
//  main.swift
//  split_n^2_array
//
//  Created by Derrick kim on 2022/12/04.
//

import Foundation
//    [1,1] = 1
//    [1,2] = 2
//    [1,3] = 3

//    [2,1] = 2
//    [2,2] = 2
//    [2,3] = 3

//    [3,1] = 3
//    [3,2] = 3
//    [3,3] = 3

func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let leftNumber = Int(left)
    let rightNumber = Int(right)
    var result = Array(repeating: 0, count: Int(rightNumber - leftNumber) + 1)

    for num in 0..<result.count {
        let column = ((num + leftNumber) / n) + 1
        let row = ((num + leftNumber) % n) + 1

        result[num] = max(column, row)
    }

    return result
}

print(solution(4, 2, 5))

//func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//    var n2Array = Array(repeating: Array(repeating: 0, count: n), count: n)
//
//    for i in 0..<n {
//        for num in 0...i {
//            n2Array[i][num] = i+1
//        }
//
//        for num2 in 1..<n {
//            if n2Array[i][num2] == 0 {
//                n2Array[i][num2] = num2 + 1
//            }
//        }
//    }
//    let allNumber: Array<Int> = n2Array.reduce([],+)
//
//    return allNumber[Int(left)...Int(right)].map{ Int($0) }
//}
