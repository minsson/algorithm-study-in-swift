//
//  부족한_금액_계산.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/10/18.
//  https://school.programmers.co.kr/learn/courses/30/lessons/82612

func answer_PGS_calculateShortfall(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer:Int64 = -1
    let countList = Array(0...count)
    let totalPrice =  countList.map { $0 * price }
    
    answer = Int64(totalPrice.reduce(0, +)) - Int64(money)
    
    return answer < 0 ? 0 : answer
}
