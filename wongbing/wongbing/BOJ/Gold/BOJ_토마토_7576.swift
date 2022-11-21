//
//  BOJ_토마토_7576.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/20.
// https://www.acmicpc.net/problem/7576
// 3시간

func answer_BOJ_토마토_7576() {
    
    class Queue<T> {
        var enqueue: [T] = []
        var dequeue: [T] = []
        
        var isEmpty: Bool{
            return enqueue.isEmpty && dequeue.isEmpty
        }
        var count: Int{
            return enqueue.count + dequeue.count
        }
        
        func push(_ n: T){
            enqueue.append(n)
        }
        
        func pop() -> T?{
            if dequeue.isEmpty{
                dequeue = enqueue.reversed()
                enqueue.removeAll()
            }
            return dequeue.popLast()
        }
    }

    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let m = input[0]
    let n = input[1]
    var matrix = [[Int]]()
    var startPointList = [(n: Int, m:Int)]()
    (0..<n).forEach { n in
        let row = readLine()!.split(separator: " ").compactMap { Int($0) }
        matrix.append(row)
        (0..<m).forEach { m in
            if row[m] == 1 {
                startPointList.append((n,m))
            }
        }
    }

    func propagate(start: [(n: Int, m: Int)]) -> Int {
        guard Set(matrix.flatMap { $0 }) != Set([1]) else { return 0 }
        var currentDepth = 0
        let dx = [0, 0, 1, -1]
        let dy = [1, -1, 0, 0]
        let queue = Queue<(node: (Int, Int), depth: Int)>()
        start.forEach { (i,j) in
            queue.push((node: (i, j), depth: 0))
        }
        while !queue.isEmpty {
            guard let data = queue.pop() else { break }
            currentDepth = data.depth
            
            for i in 0...3 {
                let x = data.node.0 + dx[i]
                let y = data.node.1 + dy[i]
                if x >= 0 && x < n && y >= 0 && y < m {
                    if matrix[x][y] == 0 {
                        matrix[x][y] = 1
                        queue.push((node: (x, y), depth: currentDepth + 1))
                    }
                }
            }
        }
        if matrix.flatMap({ $0 }).contains(0) {
            return -1
        } else {
            return currentDepth
        }
    }

    print(propagate(start: startPointList))
}
