import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    let 양꼬치가격 = n * 12000
    let 음료수가격 = k * 2000
    
    let 할인가격 = (n / 10) * 2000
    
    return 양꼬치가격 + 음료수가격 - 할인가격
}

solution(64, 6)
