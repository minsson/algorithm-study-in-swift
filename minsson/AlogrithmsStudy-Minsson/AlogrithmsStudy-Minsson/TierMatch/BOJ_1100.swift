//
//  BOJ_1100.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/12/02.
//

import Foundation

func answer_BOJ_하얀칸_1100() {
    let kan = 8
    
    var chessBoard: [[Character]] = []
    var count = 0
    
    for _ in 1...kan {
        let input = readLine()!
        chessBoard.append(Array(input))
    }
    
    for index in 0..<kan {
        let row = chessBoard[index]
        
        if index % 2 == 0 { // 홀수 인덱스에 F가 있으면 카운트
            for i in 0..<8 {
                if i % 2 == 0 && row[i] == "F" { // 0 1 2 3 4 5 6 7
                    count += 1
                }
            }
        } else { // 짝수 인덱스에 F가 있으면 카운트
            for i in 0..<8 {
                if i % 2 == 1 && row[i] == "F" {
                    count += 1
                }
            }
        }
    }
    
    print(count)
}

/*
 W B W B W B W B 0번 줄이면 짝수 인덱스에 F가 있으면 카운트한다
 B W B W B W B W 1번 줄이면 홀수 인덱스에 F가 있으면 카운트한다
 W B W B W B W B 2번 줄이면 짝수 인덱스에 F가 있으면 카운트한다
 B W B W B W B W 3번 줄이면 홀수 인덱스에 F가 있으면 카운트한다
 W B W B W B W B 4번 줄이면 짝수 인덱스에 F가 있으면 카운트한다
 B W B W B W B W 4번 줄이면 홀수 인덱스에 F가 있으면 카운트한다
 W B W B W B W B 4번 줄이면 짝수 인덱스에 F가 있으면 카운트한다
 B W B W B W B W 7번 줄이면 홀수 인덱스에 F가 있으면 카운트한다
 */
