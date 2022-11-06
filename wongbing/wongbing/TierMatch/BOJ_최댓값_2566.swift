//
//  BOJ_최댓값_2566.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/03.
//  https://www.acmicpc.net/problem/2566

import Foundation

func answer_BOJ_최댓값_2566() {
    func makeGrid() -> [[Int]] {
        var grid: [[Int]] = []
        (1...9).forEach { _ in
            let row = readLine()!.split(separator: " ").compactMap { Int($0) }
            grid.append(row)
        }
        return grid
    }

    func findMax(in grid: [[Int]]) -> Int {
        let flattedGrid = grid.flatMap { $0 }
        let maxValue = flattedGrid.max()!
        return maxValue
    }

    func findRC(at maxNum: Int, in grid: [[Int]]) -> (row: Int, column: Int) {
        for row in (0..<grid.count) {
            for col in (0..<grid[row].count) {
                if grid[row][col] == maxNum {
                    return (row + 1, col + 1)
                }
            }
        }
        return (0,0)
    }
    let grid = makeGrid()
    let maxValue = findMax(in: grid)
    let matrix = findRC(at: maxValue, in: grid)

    print(maxValue)
    print(matrix.row, matrix.column)
}
