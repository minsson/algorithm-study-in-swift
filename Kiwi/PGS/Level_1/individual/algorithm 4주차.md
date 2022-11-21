# 프로그래머스 

## Level 1

### [문자열 내 p와 y의 개수]

```swift
import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = true
    var numP = 0
    var numY = 0
    
    for i in s.lowercased() {
        if i == "p" {
            numP += 1
        } else if i == "y" {
            numY += 1
        }
    }
    
    if numP == numY {
        ans = true
    } else {
        ans = false
    }
    
    return ans
}
```

## Level 1

### [문자열을 정수로 바꾸기]

```swift
func solution(_ s:String) -> Int {
    let num = Int(s)
    
    return num!
}
```
