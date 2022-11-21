## 11월 4주차
### 레벨
[PGS] Lv.1 이상한 문자 만들기

### 참가자
[Kiwi](https://github.com/kiwi1023)🏅
[Finnn](https://github.com/finnn1)

### 문제 풀이
#### Kiwi
```swift
func solution(_ s:String) -> String {
    var num = 1
    var result = ""
    
    for i in s {
        if i != " " {
            if num % 2 != 0 {
                result.append(i.uppercased())
                num += 1
            } else  {
                result.append(i.lowercased())
                num += 1
            }
        } else {
            result.append(" ")
            num = 1
        }
    }
        return result
}
```

#### Finnn
```swift
import Foundation

func solution(_ s:String) -> String {
    let splittedString = s.split(separator: " ")
    print(splittedString)
    
    var resultString: String = ""
    for string in splittedString {
        for (index, string) in string.enumerated() {
            if index % 2 != 0 {
                resultString.append(string.lowercased())
            } else {
                resultString.append(string.uppercased())
            }
        }
        resultString.append(" ")
    }
    
    return resultString.trimmingCharacters(in: .whitespaces)
}

print(solution("  tRy hello  WORLD    "))

```

### 알게된 점
Finnn - '문제를 잘 읽자... 🥲'


### 기타
x
