//
//  main.swift
//  01tile
//
//  Created by Derrick kim on 2022/11/20.
//

import Foundation

// 1 00
//그러므로 지원이는 타일로 더 이상 크기가 N인 모든 2진 수열을 만들 수 없게 되었다. 예를 들어, N=1일 때 1만 만들 수 있고, N=2일 때는 00, 11을 만들 수 있다. (01, 10은 만들 수 없게 되었다.) 또한 N=4일 때는 0011, 0000, 1001, 1100, 1111 등 총 5개의 2진 수열을 만들 수 있다.

//우리의 목표는 N이 주어졌을 때 지원이가 만들 수 있는 모든 가짓수를 세는 것이다. 단 타일들은 무한히 많은 것으로 가정하자.

//첫 번째 줄에 지원이가 만들 수 있는 길이가 N인 모든 2진 수열의 개수를 15746으로 나눈 나머지를 출력한다.

let number = Int(readLine()!)!

var dpArray = Array(repeating: 0, count: number + 1)

func dpTile(_ num: Int) -> Int {
    if num == 1 { return 1 }
    if num == 2 { return 2 }
    else {
        dpArray[1] = 1
        dpArray[2] = 2

        for index in 3...num {
            dpArray[index] = (dpArray[index - 1] + dpArray[index - 2]) % 15746
        }
    }

    return dpArray[num]
}

print(dpTile(number))
