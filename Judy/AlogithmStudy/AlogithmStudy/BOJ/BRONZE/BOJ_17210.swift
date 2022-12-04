//
//  BOJ_17210.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/24.
//  https://www.acmicpc.net/problem/17210

func answer_BOJ_문문문_17210() {
    let roundNumber = Int(readLine() ?? "0") ?? 0
    var result: [Int] = []
    let readNumber = Int(readLine()!)!
    result.append(readNumber)

    for i in 1...(roundNumber - 1) {
        let twice = readNumber == 0 ? 1 : 0
        let third = readNumber
        
        result[i-1] == 0 ? result.append(1) : result.append(0)
        
        if (i+1) % 2 == 0 && result[i] != twice {
            print("Love is open door")
            break
        }

        if (i+1) % 3 == 0 && result[i] != third {
            print("Love is open door")
            break
        }
        
        if i == roundNumber - 1 {
            for number in 1...(result.count - 1) {
                print(result[number])
            }
        }
    }
}
