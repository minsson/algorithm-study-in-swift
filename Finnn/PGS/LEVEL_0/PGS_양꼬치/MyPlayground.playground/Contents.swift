func solution(_ n:Int, _ k:Int) -> Int {
    let 양꼬치총금액 = n * 12000
    let 음료수총금액 = k * 2000
    let 서비스음료개수 = (n / 10) * 2000
    
    return 양꼬치총금액 + 음료수총금액 - 서비스음료개수
}

solution(64, 6)
