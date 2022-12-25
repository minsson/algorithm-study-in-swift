//
//  BOJ_1004.swift
//  AlgorithmStudy
//
//  Created by 변재은 on 2022/11/13.
//  https://www.acmicpc.net/problem/1004

import Foundation

//input
//첫번째 줄 = test할 case의 횟수 T
//두번째 줄 = 해당 test case의 출발점과 도착점 좌표 (x1, y1, x2, y2)
//세번째 줄 = 행성계의 개수 N
//네번째 줄 = 부터 N개의 행성계 좌표 + 반지름

//output
//출발점 ~ 도착점까지 가는 경로 중 원과의 접촉 최소 횟수

//원의 안과 밖에 있는지 얼마나 접촉했는지 알 수 있는 방법
//-> 점과 점의 길이 공식 (x1 - x2)^2 + (y1-y2)^2 < r^2 활용하기

//출발점이 원의 안에 있다면 무조건 밖으로 나가야하기 때문에 + 1
//출발점과 도착점 둘 다 주어진 원보다 안 / 밖에 있다면 + 0

//pow = 제곱 구하는 함수
//sqrt = 제곱근 구하는 함수

func answer_BOJ_1004() {
    var T = Int(readLine()!)!

    while T > 0 {
        let N = Int(readLine()!) ?? 0
        let point = readLine()!.split(separator: " ").map{ Int($0)! }
        let startPoint = (x1: point[0], y1: point[1])
        let endPoint = (x2: point[2], y2: point[3])
        var count = 0

        for _ in 0...N {
            let input = readLine()!.split(separator: " ").map{Int($0)!}
            let fromStartPoint = figureDistance(x1: startPoint.x1,
                                                y1: startPoint.y1,
                                                x2: input[0],
                                                y2: input[1],
                                                r: input[2])
            let fromEndPoint = figureDistance(x1: endPoint.x2,
                                              y1: endPoint.y2,
                                              x2: input[0],
                                              y2: input[1],
                                              r: input[2])

            if fromStartPoint == true && fromEndPoint == false {
                count += 1
            } else if fromStartPoint == false && fromEndPoint == true {
                count += 1
            }
        }
        print(count)
        T -= 1
    }
}

func figureDistance(x1: Int, y1: Int, x2: Int, y2: Int, r: Int) -> Bool {
    let distance = pow(Decimal(x1 - x2), 2) + pow(Decimal(y1 - y2), 2)
    if distance < pow(Decimal(r), 2) {
        return true
    } else {
        return false
    }
}
