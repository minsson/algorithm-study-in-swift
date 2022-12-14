//
//  PGS_133502.swift
//  AlogithmStudy
//
//  Created by Judy on 2022/12/14.
//

func answer_PGS_햄버거만들기(_ ingredient:[Int]) -> Int {
    var buger = 0
    var i = 0
    var ingredients = ingredient
    
    while i + 3 < ingredients.count {
        if ingredients[i] != 1 {
            i += 1
            continue
        }
        
        let newBuger = Array(ingredients[i...(i+3)])
        
        if newBuger == [1, 2, 3, 1] {
            buger += 1
            ingredients.removeSubrange(i...(i+3))
            i >= 3 ? (i -= 3) : (i = 0)
            continue
        }
        
        i += 1
    }
    
    return buger
}
