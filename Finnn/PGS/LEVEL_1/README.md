# 프로그래머스 (44주차)

## LEVEL_1

### [부족한 금액 계산하기](https://school.programmers.co.kr/learn/courses/30/lessons/82612)


> - 새로 생긴 놀이기구는 인기가 매우 많아 줄이 끊이질 않습니다.
> - 이 놀이기구의 원래 이용료는 price원 인데, 놀이기구를 N 번 째 이용한다면 원래 이용료의 N배를 받기로 하였습니다.
> - 즉, 처음 이용료가 100이었다면 2번째에는 200, 3번째에는 300으로 요금이 인상됩니다.
> - 놀이기구를 count번 타게 되면 현재 자신이 가지고 있는 금액에서 얼마가 모자라는지를 return 하도록 solution 함수를 완성하세요.
> - 단, 금액이 부족하지 않으면 0을 return 하세요.

```swift
func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64 {
    var answer:Int64 = -1

    var pay = 0

    for index in 1...count {
        pay = (price * index) + pay
    }

    var require = Int64(money - pay)
    answer = require >= 0 ? 0 : -require

    return answer
}
```

### [숫자 문자열과 영단어](https://school.programmers.co.kr/learn/courses/30/lessons/81301)

> - 네오와 프로도가 숫자놀이를 하고 있습니다.
> - 네오가 프로도에게 숫자를 건넬 때 일부 자릿수를 영단어로 바꾼 카드를 건네주면 프로도는 원래 숫자를 찾는 게임입니다.
> - 다음은 숫자의 일부 자릿수를 영단어로 바꾸는 예시입니다.
> - 1478 → "one4seveneight"
> - 234567 → "23four5six7"
> - 10203 → "1zerotwozero3"
> - 이렇게 숫자의 일부 자릿수가 영단어로 바뀌어졌거나, 혹은 바뀌지 않고 그대로인 문자열 s가 매개변수로 주어집니다.
> - s가 의미하는 원래 숫자를 return 하도록 solution 함수를 완성해주세요.

```swift
func solution(_ s:String) -> Int {
    let dic = [
        "zero": "0",
        "one" : "1",
        "two" : "2",
        "three" : "3",
        "four" : "4",
        "five" : "5",
        "six" : "6",
        "seven" : "7",
        "eight" : "8",
        "nine" : "9"
    ]
    
    var answerString = ""
    var stringArray = ""
    
    s.forEach {
        if Int(String($0)) != nil {
            answerString.append($0)
        } else {
            stringArray.append($0)
            
            if let num = dic[stringArray] {
                answerString.append(num)
                stringArray = ""
            }
        }
    }
    
    return Int(answerString)!
}
```

</br>

---

</br>

## LEVEL_1 티어전
### 참가자
[보리사랑](https://github.com/yusw10) 🏅
[핀](https://github.com/finnn1)

### [콜라츠 추측](https://school.programmers.co.kr/learn/courses/30/lessons/12943)

> 1-1. 입력된 수가 짝수라면 2로 나눕니다.
> 1-2. 입력된 수가 홀수라면 3을 곱하고 1을 더합니다. 
> 2. 결과로 나온 수에 같은 작업을 1이 될 때까지 반복합니다.

```swift
func solution(_ num:Int) -> Int {
    var userInput = num
    var count = 0

    while userInput > 1 {
        if count == 500 {
            count = -1
            break
        }

        count += 1

        if userInput % 2 == 0 {
            userInput = userInput / 2
        } else {
            userInput = (userInput * 3) + 1
        }
    }

    return count
}
```
### 알게된 점
보리와 함께 문제를 풀며 로직 별로 메서드로 분리하면 나중에 어디서 문제가 발생했는지 확인하기 쉽다는 것을 배울 수 있었다. 👍👍


