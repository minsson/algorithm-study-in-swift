//
//  BOJ_1100.swift
//  main
//
//  Created by 오경식 on 2022/12/02.
//

import Foundation

func BOJ_1100() {
    var arr: [[String]] = []

    for _ in 0...7 {
        let input = readLine()!.map { String($0) }
        arr.append(input)
    }
    var count = 0



    for i in 0...7 {
        for j in 0...7 {

            if i % 2 == 0 {
                if j % 2 == 0 {

                    if arr[i][j] == "F" {
                        count  += 1
                    }
                }
            } else {

                if j % 2 == 1 {
                    if arr[i][j] == "F" {
                        count += 1
                    }
                }
            }
        }
    }
    print(count)
}
