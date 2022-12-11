## 11월 4주차

### 레벨

[PGS] Lv.1 행렬의 덧셈

### 참가자
 [수꿍](https://github.com/Jeon-Minsu)🏅
 [Kiwi](https://github.com/kiwi1023) 

### 문제 풀이

#### 문제 설명

단어 s의 가운데 글자를 반환하는 함수, solution을 만들어 보세요. 단어의 길이가 짝수라면 가운데 두글자를 반환하면 됩니다.

```swift

func solution(_ s:String) -> String {
    var answer = ""
   
    if Array(s).count % 2 == 0 {
        answer.append(Array(s)[s.count/2 - 1])
        answer.append(Array(s)[s.count/2])
    } else {
        answer.append(Array(s)[s.count/2])
    }
    
    return answer
}

```
### 알게된 점

X

### 중요한 점

X

### 기타

X

