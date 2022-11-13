//
//  티어전3주차.swift
//  main
//
//  Created by 오경식 on 2022/11/13.
//

import Foundation

func answer_BOJ_영수증_25304() {
    let totalPrice = Int(readLine()!)
    let buy = Int(readLine()!)
    var total = 0

    for _ in 1...buy! {

        let arr = readLine()!.split(separator: " ")
        let a = Int(arr[0])!
        let b = Int(arr[1])!
        total += a * b
    }

    if totalPrice == total {
        print("Yes")
    } else {
        print("No")
    }
}
