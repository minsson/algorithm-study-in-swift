//
//  answer_BOJ_5597() .swift
//  main
//
//  Created by 오경식 on 2022/12/18.
//

import Foundation

func answer_BOJ_5597() {
    var classmate = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
    for _ in 0...27 {
        let pass = Int(readLine()!)!
        if classmate.contains(pass) {
            classmate.remove(at: classmate.firstIndex(of: pass)!)
        }
    }
    print(classmate.min()!)
    print(classmate.max()!)
}
