//import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var answer:Int64 = -1
    
    var pay = 0
    
    for index in 1...count {
        pay = (price * index) + pay
    }
    
    var require = Int64(money - pay)
    answer = require >= 0 ? 0 : -require
    
    return answer
}

solution(3, 20, 4)
