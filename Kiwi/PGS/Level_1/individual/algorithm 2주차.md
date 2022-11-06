# 프로그래머스 

## Level 1

### [약수의 합]

```swift 
func solution(_ n:Int) -> Int {
    var num = 0

    for i in 0...n {
        if n != 0, i != 0, n % i == 0 {
            num += i
        } else {
            continue
        }
    }

    return num
}
```
