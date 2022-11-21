//
//  BOJ_2588.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/19.
//  https://www.acmicpc.net/problem/2588

func answer_BOJ_곱셈_2588() {
    let num1 = readLine()!
    let num2 = readLine()!
    
    let splitedNum2 = Array(num2)
    
    for i in stride(from: splitedNum2.count - 1, through: 0, by: -1) {
        print(Int(num1)! * Int(String(splitedNum2[i]))!)
    }

    print(Int(num1)! * Int(num2)!)
}

/* 처음 제출한 코드
 let num1 = readLine()!
 let num2 = readLine()!
 
 let splitedNum2 = Array(num2)
 
 let row3 = Int(num1)! * Int(String(splitedNum2[2]))!
 let row4 = Int(num1)! * Int(String(splitedNum2[1]))!
 let row5 = Int(num1)! * Int(String(splitedNum2[0]))!
 
 print(row3)
 print(row4)
 print(row5)
 print(Int(num1)! * Int(num2)!)
 */
