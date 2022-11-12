func solution(_ numbers:[Int]) -> Double {
    var all: Double = 0
    
    for number in numbers {
        all += Double(number)
    }
    
    return all / Double(numbers.count)
}

solution([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
