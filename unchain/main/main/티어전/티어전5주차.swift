//
//  티어전5주차.swift
//  main
//
//  Created by 오경식 on 2022/11/26.
//

import Foundation

func BOJ_10807() {
    let count = readLine()!
    let nums = readLine()!.components(separatedBy: " ").map({String($0)})
    let v = readLine()!
    var result = 0

    for i in nums {
        if String(i) == v { result += 1 }
    }

    print(result)
}
