//
//  PGS_120883.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/18.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/120883

import Foundation

func answer_PGS_로그인_성공_120883() {
    func solution(_ id_pw:[String], _ db:[[String]]) -> String {
        for i in db {
            if id_pw[0] == i[0] && id_pw[1] == i[1] {
                return "login"
            } else if id_pw[0] == i[0] {
                return "wrong pw"
            }
        }
        
        return "fail"
    }
}
