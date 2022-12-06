import Foundation

func solution(_ array:[Int]) -> Int {
    var intDic: [Int: Int] = [:]
    
    array.forEach {
        if let count = intDic[$0] {
            intDic[$0] = count + 1
        } else {
            intDic[$0] = 1
        }
    }
    
    let sorted = intDic.sorted { $0.1 > $1.1 }
    
    print(sorted)
    
    if sorted.count == 1 {
        return sorted[0].key
    } else if sorted.count > 1 {
        if sorted[0].value == sorted[1].value {
            return -1
        }
    }
    
    return sorted[0].key
}

solution([1])
