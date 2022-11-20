//
//  BOJ_최소힙_1927.swift
//  wongbing
//
//  Created by 이원빈 on 2022/11/09.
// https://www.acmicpc.net/problem/1927
// 2시간

func answer_BOJ_최소힙_1927() {
    let n = Int(readLine()!)!
    var list = Heap<Int>.init { a, b in
        a < b
    }
    list.add(element: 0)
    (1...n).forEach { _ in
        let num = Int(readLine()!)!
        switch num {
        case let x where x < 0:
            return
        case let x where x == 0:
            print(list.remove() ?? 0)
        case let x where x > 0:
            list.insert(node: x)
        default:
            return
        }
    }
    
    struct Heap<T: Comparable> {
        private var elements: [T] = []
        private let sortFunction: (T, T) -> Bool
        var isEmpty: Bool {
            return self.elements.count == 1
        }
        var peek: T? {
            if self.isEmpty { return nil }
            return elements[1]
        }
        var count: Int {
            return self.elements.count - 1
        }
        
        init(elements: [T] = [], sortFunction: @escaping (T, T) -> Bool) {
            if !elements.isEmpty {
                self.elements = [elements.first!] + elements
            } else {
                self.elements = elements
            }
            self.sortFunction = sortFunction
            if elements.count > 1 {
                self.buildHeap()
            }
        }
        
        func leftChild(of index: Int) -> Int {
            return index * 2
        }
        
        func rightChild(of index: Int) -> Int {
            return index * 2 + 1
        }
        
        func parent(of index: Int) -> Int {
            return index / 2
        }
        
        mutating func add(element: T) {
            self.elements.append(element)
        }
        
        mutating func insert(node: T) {
            if self.elements.isEmpty {
                self.elements.append(node)
                return
            }
            self.elements.append(node)
            self.swimUp(from: self.elements.endIndex - 1)
        }
        
        mutating func remove() -> T? {
            if self.isEmpty { return nil }
            self.elements.swapAt(1, elements.endIndex - 1)
            let deleted = elements.removeLast()
            self.diveDown(from: 1)
            
            return deleted
        }
        
        mutating func swimUp(from index: Int) {
            var index = index
            while index != 1 && self.sortFunction(self.elements[index], self.elements[self.parent(of: index)]) {
                self.elements.swapAt(index, self.parent(of: index))
                index = self.parent(of: index)
            }
        }
        
        mutating func diveDown(from index: Int) {
            var higherPriority = index
            let leftIndex = self.leftChild(of: index)
            let rightIndex = self.rightChild(of: index)
            
            if leftIndex < self.elements.endIndex &&
                self.sortFunction(self.elements[leftIndex], self.elements[higherPriority]) {
                higherPriority = leftIndex
            }
            
            if rightIndex < self.elements.endIndex &&
                self.sortFunction(self.elements[rightIndex], self.elements[higherPriority]) {
                higherPriority = rightIndex
            }
            
            if higherPriority != index {
                self.elements.swapAt(higherPriority, index)
                self.diveDown(from: higherPriority)
            }
        }
        
        mutating func buildHeap() {
            for index in (1...(self.elements.count / 2)).reversed() {
                self.diveDown(from: index)
            }
        }
    }
}
