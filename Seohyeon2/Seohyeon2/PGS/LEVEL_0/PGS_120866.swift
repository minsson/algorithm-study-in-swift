//
//  PGS_120866.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120866

import Foundation

func answer_PGS_안전지대_120866() {
    func check(row: Int, col: Int, rowCount: Int, colCount: Int) -> Bool {
        if ((row >= 0) && (row <= rowCount)) && ((col >= 0) && (col <= colCount)) {
            return true
        }
        return false
    }
    
    func solution(_ board:[[Int]]) -> Int {
        var result = 0
        var b = board
        for row in 0..<board.count {
            for col in 0..<b[row].count {
                if b[row][col] == 1 {
                    // 위에 왼쪽 대각선
                    var tempRow = row - 1
                    var tempCol = col - 1
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    // 위에
                    tempCol = col
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    // 위에 오른쪽 대각선
                    tempCol = col + 1
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    // 왼쪽
                    tempRow = row
                    tempCol = col - 1
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    // 오른쪽
                    tempCol = col + 1
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    // 아래 왼쪽 대각선
                    tempRow = row + 1
                    tempCol = col - 1
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    // 아래
                    tempCol = col
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                    
                    // 아래 오른쪽 대각선
                    tempCol = col + 1
                    if check(row: tempRow, col: tempCol, rowCount: b.count-1, colCount: b[row].count-1) && (b[tempRow][tempCol] != 1) {
                        b[tempRow][tempCol] = 2
                    }
                }
            }
        }
        
        b.forEach{ arr in
            arr.forEach {
                if $0 == 0 {
                    result += 1
                }
            }
        }
        
        return result
    }
}
