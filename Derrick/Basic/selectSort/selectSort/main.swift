//
//  main.swift
//  selectSort
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation


// 다음의 숫자들을 오름차순으로 정렬하는 프로그램을 작성하라

// 1 10 5 8 7 6 4 3 2 9

// 가장 작은 수를 선택해서 제일 앞으로 계속해서 보내는 것.
// 가장 앞에 하나가 정렬됬다면 해당 요소를 제외한 나머지 중에서 찾는다.

func solution() {
    var array = [1,10,5,8,7,6,4,3,2,9]
    var min = 0
    var index = 0
    var temp = 0

    for num1 in 0..<10 {
        // 모든 요소의 숫자보다 더 큰 숫자 아무거나 min에 넣으면 된다.
        min = 9999
        for num2 in num1..<10 {
            if (min > array[num2]) {
                min = array[num2]
                index = num2
            }
        }

        temp = array[num1]
        array[num1] = array[index]
        array[index] = temp
    }

    print(array)
}

solution()

// 10 + 9 + 8 + .. + 1  <- 등차 수열
// 10 * (10 + 1) / 2 = 55 번 검사해야함
// N * (N + 1) / 2 : 걸린 시간
// N * N  걸린 시간 - > 빅오 표기법 O(N * N)
