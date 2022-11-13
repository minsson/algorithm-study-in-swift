//
//  addMatrix.swift
//  AlogithmStudy
//
//  Created by 김주영 on 2022/11/09.
//

func addMatrix(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    
    for (ar1, ar2) in zip(arr1, arr2) {
        var sum: [Int] = []
        
        for (aa1, aa2) in zip(ar1, ar2) {
            sum.append(aa1 + aa2)
        }
        
        result.append(sum)
    }

    return result
}
