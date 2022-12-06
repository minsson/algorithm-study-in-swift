//
//  BOJ_10828.swift
//  AlgorithmStudy
//
//  Created by bard on 2022/12/04.
//  https://www.acmicpc.net/problem/10828

import Foundation

func answer_BOJ_10828() {
    var count = Int(readLine()!)!
    var stack: [Int] = []
    
    while count > 0 {
        let promblem = readLine()!
        
        if promblem.components(separatedBy: " ")[0] == "push" {
            stack.append(Int(promblem.components(separatedBy: " ")[1])!)
            count -= 1
        }
        
        if promblem == "pop" {
            if stack.isEmpty == false {
                print(stack.last!)
                stack.removeLast()
            } else if stack.isEmpty {
                print(-1)
            }
            count -= 1
        }
        
        if promblem == "size" {
            print(stack.count)
            count -= 1
        }
        
        if promblem == "empty" {
            if stack.isEmpty {
                print(1)
            } else {
                print(0)
            }
            count -= 1
        }
        
        if promblem == "top" {
            if stack.isEmpty{
                print(-1)
            } else {
                print(stack.last!)
            }
            count -= 1
        }
    }
}
