//
//  BOJ_Stack_10828.swift
//  Algorithm_Study_in_Swift
//
//  Created by 유한석 on 2022/12/04.
//  https://www.acmicpc.net/problem/10828
//


import Foundation

var result:[Int] = []

func answer_스택_10828() {
    let testCount =  Int(readLine()!)!
    
    for _ in 0..<testCount {
        let input =  readLine()!
        problem_10828(input: input)
    }
    
    result.forEach { value in
        print(value)
    }
}

final class MyStack {
    static let shared = MyStack()
    var stack: [Int] = []
    private init() {}
    
    func push(input: Int) {
        stack.append(input)
    }
    
    func pop() -> Int {
        if stack.count == 0 {
            return -1
        }
        return stack.removeLast()
    }
    
    func size() -> Int {
        return stack.count
    }
    func empty() -> Int {
        return stack.count == 0 ? 1 : 0
    }
    
    func top() -> Int {
        if stack.count == 0 {
            return -1
        }
        return stack.last!
    }
}

func problem_10828(input: String) {
    let inputValue = input.components(separatedBy: " ")
    if inputValue.count == 2 {
        MyStack.shared.push(input: Int(inputValue[1])!)
    }
    if inputValue[0] == "top" {
        result.append(MyStack.shared.top())
    } else if inputValue[0] == "empty" {
        result.append(MyStack.shared.empty())
    } else if inputValue[0] == "size" {
        result.append(MyStack.shared.size())
    } else if inputValue[0] == "pop" {
        result.append(MyStack.shared.pop())
    }
}
