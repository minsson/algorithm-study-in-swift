# 백준

## 브론즈 

### [모음의 개수](https://github.com/wongbingg/algorithm-study-in-swift/commit/58fc9c9baeb57b99c26e52f876730988c65ac2c9)

- while let 을 사용하여 옵셔널 바인딩을 해준 뒤, 해당 값을 이용해 break 조건을 걸어주었다. 
### [욱제](https://github.com/wongbingg/algorithm-study-in-swift/commit/699028e11b0dd715a842320774eddbb58b17c758)

- 간단한 제곱, 나누기를 활용한 문제였다

---

# 티어전
## 10월 4주차
### 브론즈 3
### 참가자
[웡빙](https://github.com/wongbingg) 🏅

[현이](https://github.com/seohyeon2)

### 문제 풀이
```swift
func answer_BOJ_부호_1247() {

    (1...3).forEach { _ in
        var overflow = 0
        var result = 0
        let n = Int(readLine()!)!
        (1...n).forEach { _ in
            let input = Int(readLine()!)!
            
            if result > 0 && input > 0 && input > Int.max - result {
                overflow += 1
                result = result - Int.max + input
            } else if result < 0 && input < 0 && input < -(Int.max + result) {
                overflow -= 1
                result = result + Int.max + input
            } else {
                result += input
            }
        }
        if overflow == 1 && result == -Int.max {
            print("0")
            return
        } else if overflow == -1 && result == Int.max {
            print("0")
            return
        } else if overflow == 1 && result > -Int.max && result < 0 {
            print("+")
            return
        } else if overflow == -1 && result < Int.max && result > 0 {
            print("-")
            return
        }
        showResult(result, overflow: overflow)
    }
    
    func showResult(_ result: Int, overflow: Int) {
        if overflow < 0 {
            print("-")
        } else if overflow > 0 {
            print("+")
        } else if result == 0 {
            print(0)
        } else if result < 0 {
            print("-")
        } else if result > 0 {
            print("+")
        }
    }
}
```
### 알게된 점
Int값의 범위인 -9223372036854775808 ~ 9223372036854775807 를 뛰어넘는 계산을 필요로할 수 있다는 것. 
### 중요한 점 
Int.max 의 값이 넘어가는 계산이 수행될 시 오류가 발생한다. 이를 피하기 위해 overflow 되는 값을 변수로 관리하여 예외 케이스들을 고려해주어야 한다.
### 기타
