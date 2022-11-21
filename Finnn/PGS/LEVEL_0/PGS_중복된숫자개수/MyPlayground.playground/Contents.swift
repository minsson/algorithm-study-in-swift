import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var count = 0
    
    for number in array {
        if number == n {
            count += 1
        }
    }
    
    return count
}

solution([1, 1, 2, 3, 4, 5], 1)
