//
//  main.swift
//  최빈값구하기
//
//  Created by Derrick kim on 2022/11/09.
//

import Foundation


func solution(_ array:[Int]) -> Int {
    let sortedDictionary = Dictionary(grouping: array) { $0 }.sorted { $0.value.count > $1.value.count }

    return sortedDictionary.count > 1 && sortedDictionary[0].value.count == sortedDictionary[1].value.count ? -1 : sortedDictionary[0].key
}
