//
//  main.swift
//  BOJ_영수증_25304
//
//  Created by LeeChiheon on 2022/11/12.
//

let 총금액 = Int(readLine()!)!
let 종류수 = Int(readLine()!)!
var amount: Int = 0

for _ in 1...종류수 {
    let 가격과개수 = readLine()!.split(separator: " ").map { Int(String($0))! }
    amount += 가격과개수[0] * 가격과개수[1]
}

print(amount == 총금액 ? "Yes" : "No")
