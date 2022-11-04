# 프로그래머스 (플랫폼 이름)

## Level 1

### [평균구하기]

```swift 
func solution(_ arr:[Int]) -> Double {
    var num: Int
    var number: Double
    
    num = arr.reduce(0) { $0 + $1 }
    number = Double(num) / Double(arr.count)
   
    return number
}
```

### [짝수와 홀수 ]

```swift
func solution(_ num:Int) -> String {
    if num % 2 == 0 {
        return "Even"
    } else {
     return "Odd"   
    }
}
```
