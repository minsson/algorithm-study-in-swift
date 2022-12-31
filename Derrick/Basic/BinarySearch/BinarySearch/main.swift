//
//  main.swift
//  BinarySearch
//
//  Created by Derrick kim on 2022/12/25.
//

import Foundation

import Foundation

let sampleArray = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

func binarySearch(_ array: [Int], _ num: Int) -> Int? {

    var start = 0
    var end = array.count - 1

    while start <= end { // 이게 false 가 되는 경우는 둘이 만나는, 그러니까 배열의 원소가 1개만 남는 경우.

        let mid = (start + end) / 2
        let value = array[mid]

        if value == num {
            return mid                // 값이 아닌 위치를 반환한다.
        } else if value > num {       // 내가 찾는 숫자보다 추측 값이 더 큰 경우 => 다음에는 더 작게 추측해야한다.
            end = mid - 1
        } else {                      // 숫자가 추측 값보다 더 큰 경우 => 다음에는 더 크게 추측해야한다.
            start = mid + 1
        }

    }

    return nil
}

print(binarySearch(sampleArray, 13)!) // Result : 12
print(binarySearch(sampleArray, 16)) // Result : Nil
