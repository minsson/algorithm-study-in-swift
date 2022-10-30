//
//  ddasdf.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/10/30.
//

import Foundation

func answer_BOJ_윤년_2753() {
    
    let input = Int(readLine()!)!
    
    let a = input % 4 == 0
    let b = input % 100 != 0
    let c = input % 400 == 0
    
    if a && b || c {
        print(1)
    } else {
        print(0)
    }
}
