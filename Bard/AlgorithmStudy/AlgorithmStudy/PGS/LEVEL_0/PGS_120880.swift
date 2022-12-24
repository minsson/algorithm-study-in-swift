//
//  PGS_120880.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/24.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120880

import Foundation

func answer_PGS_120880(_ numlist:[Int], _ n:Int) -> [Int] {
    var result: [Int] = []
    var numberListDictionary: [Int: Int] = [:]
    var distance = 0
    
    for i in 0...numlist.count - 1 {
        if numlist.distance(from: n, to: numlist[i]) < 0 {
            distance = -(numlist.distance(from: n, to: numlist[i]))
        } else {
            distance = numlist.distance(from: n, to: numlist[i])
        }
        numberListDictionary[numlist[i]] = distance
    }
    
    result = numberListDictionary.sorted {
        if $0.value == $1.value {
            if $0.key > $1.key {
                return $0.key > $1.key
            }
        }
        
        return $0.value < $1.value
    }.map {
        $0.key
    }
    
    return result
}
