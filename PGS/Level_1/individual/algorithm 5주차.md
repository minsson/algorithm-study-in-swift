# 프로그래머스 

## Level 1

### [하샤드 수]

```swift
func solution(_ x:Int) -> Bool {
    var arr: [Int] = []
    var num = x
    arr.append(x % 10)
    
    for _ in 1...5 {
        if num / 10 > 0 {
            num = num / 10
            arr.append(num % 10)
        } else {
            break
        }
    }
    
    var add = arr.reduce(0) { $0 + $1 }
    
    if x % add == 0 {
        return true
    } else {
        return false
    }
}
```
