//
//  BOJ_1284.swift
//  main
//
//  Created by 오경식 on 2022/12/18.
//

import Foundation

func answer_BOJ_1284() {
    while true {
        let arr = readLine()!.map { Int(String($0))! }
        if arr.count == 1 && arr[0] == 0 {
            break
        }

        print(
            arr.reduce(0) { (count: Int, element: Int) -> Int in
                return count + (element == 0 ? 4 :
                                    (element == 1 ? 2 : 3))
            } + arr.count + 1
        )
    }
}
