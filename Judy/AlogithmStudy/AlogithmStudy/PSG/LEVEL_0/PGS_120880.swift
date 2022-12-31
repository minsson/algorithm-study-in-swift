//
//  PGS_120880.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/24.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120880

import Foundation

func answer_PGS_특이한정렬(_ numlist:[Int], _ n:Int) -> [Int] {
    let sortedArray = numlist.sorted(by: <)
    let array = sortedArray.map {
        $0 > n ? $0 - n : n - $0
    }
    
    let index = array.firstIndex(of: array.min()!)!
    var result = [sortedArray[index]]
    var min = index - 1
    var max = index + 1
    
    while min >= 0 && max < numlist.count {
        if array[min] < array[max] {
            result.append(sortedArray[min])
            min -= 1
        } else if array[min] > array[max] {
            result.append(sortedArray[max])
            max += 1
        } else {
            if sortedArray[min] > sortedArray[max] {
                result.append(sortedArray[min])
                result.append(sortedArray[max])
            } else {
                result.append(sortedArray[max])
                result.append(sortedArray[min])
            }
            min -= 1
            max += 1
        }
    }
    
    if min >= 0 {
        result = result + Array(sortedArray[0...min]).reversed()
    }
    
    if max < sortedArray.count {
        result = result + Array(sortedArray[max..<sortedArray.count])
    }
    
    return result
}
