//
//  PGS_12916.swift
//  Seohyeon2
//
//  Created by seohyeon park on 2022/12/24.
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12916

import Foundation

func answer_PGS_문자열_내_p와_y의_개수_12916() {
    func solution(_ s:String) -> Bool
    {
        let p = s.lowercased().filter {
            String($0) == "p"
        }
        
        let y = s.lowercased().filter {
            String($0) == "y"
        }
        
        return p.count == y.count ? true : false
    }
}
