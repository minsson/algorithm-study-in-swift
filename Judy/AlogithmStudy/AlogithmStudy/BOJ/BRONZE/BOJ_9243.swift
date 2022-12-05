//
//  BOJ_9243.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/30.
//  https://www.acmicpc.net/problem/9243

func answer_BOJ_파일완전삭제_9243() {
    let number = Int(readLine()!)!
    let file = readLine()!
    let resultFile = readLine()!
    var newFile = file

    if number % 2 != 0 {
        let aaa = file.map { $0 == "0" ? String(1) : String(0)}
        newFile = aaa.joined()
    }

    if resultFile == newFile {
        print("Deletion succeeded")
    } else {
        print("Deletion failed")
    }
}
