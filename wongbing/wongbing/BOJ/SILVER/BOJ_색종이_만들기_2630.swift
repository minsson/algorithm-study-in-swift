//
//  BOJ_색종이_만들기_2630.swift
//  wongbing
//
//  Created by 이원빈 on 2022/10/28.
// https://www.acmicpc.net/problem/2630
// 37 분

func answer_BOJ_색종이_만들기_2630() {
    
    let N = Int(readLine()!)!
    var grid: [[Int]] = []
    var result: (Int, Int) = (0,0)
    (1...N).forEach { _ in
        let row = readLine()!.split(separator: " ").compactMap { Int($0) }
        grid.append(row)
    }
    
    func checkAllSame(grid: [[Int]]) -> Bool {
        let list = grid.flatMap { $0 }
        let setList = Set(list)
        if setList.count == 1 {
            return true
        } else {
            return false
        }
    }
    
    func devideFour(grid: [[Int]]) -> [[[Int]]] {
        var one: [[Int]] = []
        var two: [[Int]] = []
        var three: [[Int]] = []
        var four: [[Int]] = []
        let n = grid[0].count
        for i in 0..<n/2 {
            var row = [Int]()
            for j in 0..<n/2 {
                row.append(grid[i][j])
            }
            one.append(row)
        }
        
        for i in 0..<n/2 {
            var row = [Int]()
            for j in n/2..<n {
                row.append(grid[i][j])
            }
            two.append(row)
        }
        
        for i in n/2..<n {
            var row = [Int]()
            for j in 0..<n/2 {
                row.append(grid[i][j])
            }
            three.append(row)
        }
        
        for i in n/2..<n {
            var row = [Int]()
            for j in n/2..<n {
                row.append(grid[i][j])
            }
            four.append(row)
        }
        
        return [one, two, three, four]
    }
    
    func calculate(grid: [[Int]]) {
        if checkAllSame(grid: grid) {
            let num = grid[0][0]
            if num == 0 {
                result.0 += 1
            } else {
                result.1 += 1
            }
        } else {
            calculate(grid: devideFour(grid: grid)[0])
            calculate(grid: devideFour(grid: grid)[1])
            calculate(grid: devideFour(grid: grid)[2])
            calculate(grid: devideFour(grid: grid)[3])
        }
    }
    
    calculate(grid: grid)
    print(result.0, result.1, separator: "\n")
    
}
