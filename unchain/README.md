# 백준

## 브론즈

### [??!](https://github.com/unchain123/algorithm-study-in-swift.git)
- 입력하는 문자열에 ??!를 붙이는 방법
- 아래와 같이 print() 안에 출력하고자 하는 내용을 넣으면 된다.
- 문제에서 요구하는게 이런건지 모르고 내가 입력한 ID가 기존의 배열에 있는지 확인하는 로직을 짰었다.(5번 틀림) 다음부턴 좀 더 간단하게 생각해 보겠다.
```swift
let line = readLine()!
print("\(line)??!")
```

## 브론즈

### [A×B](https://github.com/unchain123/algorithm-study-in-swift.git)
- 두 정수 A와 B를 입력 받은 다음 A×B를 출력하는 프로그램
- readLine으로 a와 b를 받아온다음 a,b의 범위를 확인하는 guard문을 작성하고 프린트 한다.
```swift
func result() {
    let line = readLine()!
    let lineArr = line.split(separator: " ")
    let a = Int(lineArr[0])!
    let b = Int(lineArr[1])!
    guard a > 0, b < 10 else { return }
    print(a*b)

}
result()
```

