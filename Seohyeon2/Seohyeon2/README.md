# 알고리즘 템플릿

# 백준

## 브론즈

### [욱제](https://github.com/seohyeon2/algorithm-study-in-swift/commit/0d2efa192f361de7522847a49970e387e44487b0)
**<문제 풀이에 필요한 개념>**
- 문자열 입력
    - `readLine()!.split(separator: " ").map{ }` 을 이용하여 띄어쓰기로 입력을 구분해서 받을 수 있음
- 제곱
    - `pow` 메서드를 이용해 제곱을 구할 수 있음 

### [모음의 개수](https://github.com/seohyeon2/algorithm-study-in-swift/commit/6c8dd6906378d51cbc0f87b294df8a65eb818f73)
**<문제 풀이에 필요한 개념>**
- 반복문
    - `while let input = readLine() { }` 를 이용하면 유효한 입력값에 대해서만 반복문을 돌릴 수 있음
- 소문자, 대문자 변환
    - 소문자는 `lowercased()` 메서드를, 대문자는 `uppercased()` 메서드를 사용하여 변환할 수 있음

<br>

# 프로그래머스

## 레벨 0

### [옹알이1](https://github.com/seohyeon2/algorithm-study-in-swift/commit/570adcc4a83a82edf019af4a55c53570c5d9fdac)
**<문제 풀이에 필요한 개념>**
- reduce
- 문자열 분리
    - 문자열을 문자열로 분리시키려면 `split(separator:)` 대신 `components(separatedBy:)` 사용해야함
- whitespaces
    - `trimmingCharacters(in: .whitespaces)`을 사용하여 whitespaces를 제거할 수 있음

### [다음에 올 숫자](https://github.com/seohyeon2/algorithm-study-in-swift/commit/f28d123dbea0ece3adba19311b71a60d9a7f5239)
**<문제 풀이에 필요한 개념>**
- 등차수열
    - 일반항 : `a + (n-1 * d)`
- 등비수열
    - 일반항 : `a * rⁿ⁻¹`

### [분수의 덧셈](https://school.programmers.co.kr/learn/courses/30/lessons/120808)
**<문제 풀이에 필요한 개념>**
- 통분
- 기약분수

### [평행](https://school.programmers.co.kr/learn/courses/30/lessons/120875)
**<문제 풀이에 필요한 개념>**
- 기울기

### [연속된 수의 합](https://school.programmers.co.kr/learn/courses/30/lessons/120923)
**<문제 풀이에 필요한 개념>**
- 등차수열

### [직사각형 넓이 구하기](https://school.programmers.co.kr/learn/courses/30/lessons/120860)
**<문제 풀이에 필요한 개념>**
- 좌표 해석

### [7의 개수](https://school.programmers.co.kr/learn/courses/30/lessons/120912)
**<문제 풀이에 필요한 개념>**
- 고차 함수

### [진료순서 정하기](https://school.programmers.co.kr/learn/courses/30/lessons/120835)
**<문제 풀이에 필요한 개념>**
- 정렬

### [합성수 찾기](https://school.programmers.co.kr/learn/courses/30/lessons/120846)
**<문제 풀이에 필요한 개념>**
- 합성수

### [369게임](https://school.programmers.co.kr/learn/courses/30/lessons/120891)
**<문제 풀이에 필요한 개념>**
- filter
- contains

<br>

---

# 티어전

## 10월 4주차
### 브론즈 3
### 참가자
[웡빙](https://github.com/wongbingg) 🏅
[현이](https://github.com/seohyeon2)

### 문제 풀이
- [참고 위키](https://github.com/seohyeon2/algorithm-study-in-swift/wiki/1%EC%A3%BC%EC%B0%A8)

### 알게된 점 / 중요한 점 / 기타
- `Int.max`와 `Int.min`을 이용해 Int의 최대, 최소 범위를 구할 수 있는 점
- Int의 범위를 넘어가면 스레드가 종료된다는 점
- 계산할 수 있는 범위를 넘었을 때, 오버플로어를 이용한 방식으로 처리할 수 있는 점 


<br>

## 11월 1주차
### 브론즈 3
### 참가자
[웡빙](https://github.com/wongbingg) 🏅

[현이](https://github.com/seohyeon2)

### 문제 풀이
- [참고 위키](https://github.com/seohyeon2/algorithm-study-in-swift/wiki/11%EC%9B%94-1%EC%A3%BC%EC%B0%A8)

### 알게된 점 / 중요한 점 / 기타
- `flatMap`, `compactMap` 활용하는 방법도 생각해보기

<br>

## 11월 2주차
### Level 1
### 참가자
[Kiwi](https://github.com/kiwi1023) 

[현이](https://github.com/seohyeon2) 🏅


### 문제 풀이
- [참고 위키](https://github.com/seohyeon2/algorithm-study-in-swift/wiki/2%EC%A3%BC%EC%B0%A8)

### 알게된 점 / 중요한 점 / 기타
- 순열과 조합 개념
- range 오류가 나지 않게 범위 잘 정해야 함
- 3중 for문 대신 다른 방법도 생각해보기

<br>

## 11월 3주차
### Level 0 
### 참가자
[unchain](https://github.com/unchain123) 

[현이](https://github.com/seohyeon2) 🏅


### 문제 풀이
- [참고 위키](https://github.com/seohyeon2/algorithm-study-in-swift/wiki/3%EC%A3%BC%EC%B0%A8)

### 알게된 점 / 중요한 점 / 기타
- 문제를 잘 읽자...!

<br>

## 11월 4주차
### Level 1
### 참가자
[데릭](https://github.com/derrickkim0109) 🏅

[현이](https://github.com/seohyeon2) 


### 문제 풀이
- [참고 위키](https://github.com/seohyeon2/algorithm-study-in-swift/wiki/4%EC%A3%BC%EC%B0%A8)

### 알게된 점 / 중요한 점 / 기타
- 시간 줄이는 연습 필요

<br>

## 12월 1주차
### Level 2
### 참가자
[웡빙](https://github.com/wongbingg)🏅

[데릭](https://github.com/derrickkim0109)

[현이](https://github.com/seohyeon2) 


### 문제 풀이
- [참고 위키](https://github.com/seohyeon2/algorithm-study-in-swift/wiki/12%EC%9B%94-1%EC%A3%BC%EC%B0%A8)

### 알게된 점 / 중요한 점 / 기타
- 규칙 찾는 연습 필요
