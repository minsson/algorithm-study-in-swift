//
//  answer_BOJ_10818.swift
//  main
//
//  Created by 오경식 on 2022/12/02.
//

import Foundation

func answer_BOJ_10818() {
    let count = Int(readLine()!)!
    let numb = readLine()!.split(separator: " ").map { Int(String($0))! }

    print(numb.min()!, numb.max()!)
}
