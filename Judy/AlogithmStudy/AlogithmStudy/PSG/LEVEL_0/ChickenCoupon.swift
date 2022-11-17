//
//  ChickenCoupon.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/11/09.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120884

func chickenCoupon(_ chicken: Int) -> Int {
    var total = 0
    var remain = chicken
    
    while remain >= 10 {
        total += remain / 10
        remain = remain / 10 + remain % 10
    }
    
    return total
}
