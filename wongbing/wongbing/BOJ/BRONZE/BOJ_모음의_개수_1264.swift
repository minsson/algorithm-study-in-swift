//
//  BOJ_모음의_개수_1264.swift
//  wongbing
//
//  Created by 이원빈 on 2022/10/25.
// https://www.acmicpc.net/problem/1264

func answer_BOJ_모음의_개수_1264() {
    while let input = readLine() {
        guard input != "#" else { break }
        var count = 0
        input.forEach { char in
            let lower = char.lowercased()
            if lower == "a" ||
                lower == "e" ||
                lower == "i" ||
                lower == "o" ||
                lower == "u" {
                count += 1
            }
        }
        print(count)
    }
}
