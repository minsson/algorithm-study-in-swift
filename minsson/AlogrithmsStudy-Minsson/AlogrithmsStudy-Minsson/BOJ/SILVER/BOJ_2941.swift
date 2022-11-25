//
//  BOJ_2941.swift
//  AlogrithmsStudy-Minsson
//
//  Created by minsson on 2022/11/19.
//  https://www.acmicpc.net/problem/2941

import Foundation

func answer_BOJ_크로아티아알파벳_2941() {
    var input = readLine()!
    
    var croatians = ["dz=", "c=", "c-", "z=", "d-", "lj", "nj", "s="]

    for i in 0...croatians.count-1 {
        input = input.replacingOccurrences(of: croatians[i], with: "1")
    }

    print(input.count)
}

/*
 String().replacingOccurrences(of: <#T##StringProtocol#>, with: <#T##StringProtocol#>)
 
 StringProtocol 문서 설명
 Do not declare new conformances to StringProtocol. Only the String and Substring types in the standard library are valid conforming types.
 
 - 즉, of와 with 두 아규먼트 레이블 모두 String 또는 Substring 타입이어야 한다.
 - of를 with로 변경한다.
 
 - 이 문제풀이에서 주의할 건, "dz="와 "z="의 순서이다.
 - croatians 어레이에 "z="이 "dz="보다 먼저 나왔고, 주어진 input이 "dz="라면, 결과적으로 "z="부터 먼저 "1"로 바꾸어 "d1"이 되므로, count는 2가 되었을 것이다.
 - 그래서 "dz="를 "z="보다 먼저 오게 했다. "dz="가 "1"이 되므로, count는 정상적으로 1이 된다.
 */


