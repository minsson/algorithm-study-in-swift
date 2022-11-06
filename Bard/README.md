# 백준

## 브론즈

### [BOJ_A플러스B_1000](9990a3834d3022254d887f6fe90cfd9f0e040b89)
- 함수 내에서 작성하는 것이 아니라 강제 옵셔널 추출 필요함

# 티어전
## 10월 4주차
### 브론즈
### 참가자
[바드](https://github.com/bar-d)🏅  
[수꿍](https://github.com/Jeon-Minsu)  

### 문제 풀이
```
import Foundation

func answer_BOJ_사칙연산_10869() {
    let input = readLine()!
    let problem = input.components(separatedBy: " ")
    let leftNumber = Int(problem[0])!
    let rightnumber = Int(problem[1])!
    
    print(leftNumber + rightnumber)
    print(leftNumber - rightnumber)
    print(leftNumber * rightnumber)
    print(leftNumber / rightnumber)
    print(leftNumber % rightnumber)
}
```
### 알게된 점
- readLine 변수명을 readLine과 똑같이 하면 컴파일 에러가 남
### 중요한 점

### 기타