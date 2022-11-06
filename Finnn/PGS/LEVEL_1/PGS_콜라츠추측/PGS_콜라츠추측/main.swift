//
//  main.swift
//  PGS_콜라츠추측
//
//  Created by LeeChiheon on 2022/10/30.
//

func solution(_ num:Int) -> Int {
    var userInput = num
    var count = 0

    while userInput > 1 {
        if count == 500 {
            count = -1
            break
        }

        count += 1

        if userInput % 2 == 0 {
            userInput = userInput / 2
        } else {
            userInput = (userInput * 3) + 1
        }
    }

    return count
}
