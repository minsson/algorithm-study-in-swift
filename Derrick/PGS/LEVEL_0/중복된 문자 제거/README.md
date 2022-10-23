# 프로그래머스 (플랫폼 이름)

## Level 0

### [중복된 문자 제거](c208215)
- 배운 내용, 문제 해결에 필요한 지식
	- 매개변수로 받는 `my_string`은 String 타입이다.
		- String은 Character의 배열이다 (문자들의 합은 문자열)
		- String을 for문으로 돌리면 Character 값으로 한 문자씩 뽑을 수 있다
	- `result` 변수를 생성해 둔다.
		- result 프로퍼티 내에 contains(_:) 메서드를 통해 for문의 character 값이 포함되어 있는지 확인한다.
		- 해당 값이 없다면 result에 값이 추가된다.
		- 해당 값이 있다면 값이 추가되지 않고 for 문이 추가적으로 실행된다.