//
//  main.swift
//  insertAlgorithm
//
//  Created by Derrick kim on 2022/12/21.
//

import Foundation

// 다음의 숫자들을 오름차순으로 정렬하는 프로그램을 작성하라

// 1 10 5 8 7 6 4 3 2 9
// 각 숫자를 적절한 위치에 삽입한다?
// 필요할 때만 위치를 바꾼다
// 버블, 선택보다 더 빠르다. O(N * N)중 가장 빠르다

func solution() {
    var temp = 0
    var array = [1,10,5,8,7,6,4,3,2,9]
    var number = 0

    for num in 0..<9 {
        number = num
        while(array[number] > array[number + 1]) {
            temp = array[number]
            array[number] = array[number + 1]
            array[number + 1] = temp
            number += -1
        }
    }
}

solution()

// 10 + 9 + 8 + ... + 1
// O(N*N)

