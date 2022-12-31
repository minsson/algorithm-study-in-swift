//
//  main.swift
//  bubbleSort
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation

// 다음의 숫자들을 오름차순으로 정렬하는 프로그램을 작성하세요
// 1 10 5 8 7 6 4 3 2 9
// 옆에 있는 값과 비교해서 더 작은 값을 앞으로 보내는 것?
// 가장 비효율적임

func solution() {
    var temp = 0
    var array = [1,10,5,8,7,6,4,3,2,9]

    for num1 in 0..<10 {
        for num2 in 0..<9-num1 {
            if(array[num2] > array[num2 + 1]) {
                temp = array[num2]
                array[num2] = array[num2 + 1]
                array[num2 + 1] = temp
            }
        }
        print(array)
    }


}

solution()

// 10 + 9 + 8 + 7 + .. + 1
// N * N 
// 버블정렬은 선택정렬과 달리 작업을 계속해서 바꿔준다
// 선택정렬은 마지막에 바꾼다
