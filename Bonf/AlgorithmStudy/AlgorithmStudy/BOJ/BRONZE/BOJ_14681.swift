//
//  BOJ_14681.swift
//  AlgorithmStudy
//
//  Created by 이은찬 on 2022/11/13.
//

import Foundation

func answer_BOJ_사분면고르기_14681() {
    let inputX = Int(readLine()!)!
    let inputY = Int(readLine()!)!
    
    if inputX > 0 && inputY > 0 {
        print(1)
    } else if inputY < 0 && inputX > 0 {
        print(4)
    } else if inputY < 0 && inputX < 0 {
        print(3)
    } else if inputY > 0 && inputX < 0 {
        print(2)
    }
}
