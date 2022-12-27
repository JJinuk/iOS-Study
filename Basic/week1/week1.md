# Week1
## 변수와 상수 / Swift 데이터 타입
### 변수와 상수
- 변수(variable): 데이터(자료)를 담을 수 있는 공간
   -  \(변수명) -> String Interpolation(문자열 보간법)
- 상수(constants):  변하지 않는 데이터(자료)를 담을 수 있는 공간
```swift
var a = 3
var b = 7

print("저의 이름은 \(name)입니다.")

let a = 3
let b = 7

var num: Int    // 변수를 선언
num = 10        // 값을 저장
```
### Swift의 데이터 타입
#### 타입(Type)의 종류
- Int: 정수(Integer)형 데이터 타입 Int
  - ex) -5, -4, -3, -2 ... 1, 2, 3 ...
  - 스위프트는 **모든 타입의 첫글자에 대문자**를 사용
- Float: 실수(Floating-point Number)형 데이터 타입(2가지)
  - 실수타입 / 부동소수(floating-point)타입
  - ex) -5.32, -2.436, 0, 3.14 ...
  - 소수점 표현 가능(6자리까지의 정보를 저장) / 4바이트
- Double: 실수타입(Float타입의 2배 공간)
- 소수점 표현가능(15자리까지의 종보를 저장) / 8바이트 
- Character: 문자
  - 하나의 문자(한글자)
  - ex) "A", "B", "C", "가", " "(공백)
- String: 문자열
  - 문자열을 저장
  - ex) "안녕하세요", "가나다", ""(빈문자열)
- Bool: true 또는 false
  - 참(true) / 거짓(false)를 저장
- 기타: UInt, UInt64 ...
#### 타입 변환(Conversion)
```swift
"123" -> Int("123") -> 123  // (String 타입 -> 타입 변환 -> Int 타입)
"안녕" -> Int("안녕") -> nil   // (String 타입 -> 타입 변환 -> 변환X)
123.45 -> Int(123.45) -> 123 // (Double 타입 -> 타입 변환 -> Int 타입(소수점 버림))
```

## 기본 연산자
### 산술 연산자
- +: 더하기 연산자
- -: 빼기 연산자
- *: 곱하기 연산자
- /: 나누기 연산자 - 나누기(정수끼리의 연산에서는 몫) Double(4 / 5) != Double(4) / Double(5)
- %: 모듈로 연산자(나머지 연산자) - 정수끼리의 연산에서 나머지 
### 복합 할당 연산자
```swift
value = value + 10 == vlaue += 10
value = value - 10 == vlaue -= 10
value = value * 10 == vlaue *= 10
value = value / 10 == vlaue /= 10
value = value % 10 == vlaue %= 10
```

### 비교 연산자 & 논리 연산자
- 비교 연산자: 이항연산자를 중심으로 왼쪽과 오른쪽에 **표현식**이 위치, 결과값은 항상 **참 또는 거짓**
- 논리 연산자: 이항연산자를 중심으로 왼쪽과 오른쪽에 **Boolean 표현식**이 위치해야 하며, 결과값 또한 항상 **참 또는 거짓**
```swift
// 비교 연산자
== : 1 == 1
!= : 1 != 2
< : 1 < 2
> : 2>1; "steve" > "Steve",
<= : 1 <= 2
>= : 1 >= 2

var isRight = (hp != 100)
(10 <= n) && (n <= 100)

// 논리 연산자
! : ~이 아닌
&& : 그리고(AND)
|| : 또는 (OR)
```

### 점근연산자
- ex)한식.김치찌개.마늘
- ex)중식.짜장면.춘장

1. 랜덤으로 숫자 얻기
   ```swift
   Int.random(in: 1...100)
   ```
2. 글자 수 세기
   ```swift
   name.count
   ```

## 조건문(if문 / Switch문)
프로그래밍의 기본 원리
1. 순차 - 개발자가 정한 규칙에 따라 순차적으로 실행
2. 조건 + 데이터 - 조건에 따라 어떤 동작을 할지의 여부
   ```swift
   // if문

   if condition1 {

   } else if  condition2 {
    
   } else {

   }

   // switch문

   switch 변수 {
    case 값 :
    case 값2, 값3 :   // case를 ,로 연결 가능
    case 값4 :
    default :       // 케이스가 도출 가능한 모든 케이스를 다루지 않는 경우
        break       // 실행하려는 코드가 없을 때
   }
   
   
   ```
3. 반복

### 튜플
- 튜플: 연관된 데이터의 조합
  > ex) 좌표(Int, Int), 3차원 공간 (Int, Int, Int)
- 튜플 내부의 각각의 데이터 접근
  > 변수명.0(첫번째 데이터), 변수명.1

#### 튜플의 문법
- Named Tuple
  ```swift
  let iOS = ("Swift", "5.3")
  let iOS = (language: "Swift", version: "5.3")
  ```
- 튜플 내부의 각각의 데이터 접근
  > 변수명.0 / 변수명.language -> 첫번째 데이터  변수명.1/ 변수명.version -> 두번째 데이터

#### 튜플의 분해
- 튜플의 각 요소를 각각 상수/변수화 가능(바인딩)
  ```swift
  let (name, age, adress) = ("홍길동", 20, "서울")

  print(name)       // 홍길동
  print(adress)     // 서울
  ```

#### 튜플의 활용
```swift
// if문의 활용
if iOS == ("Swift", "5") {
    print("스위프트 버전 5입니다.")
}

// switch문의 활용
switch iOS {
    case ("Swift", "5"):
        print("스위프트 버전 5입니다.")
    case ("Swift", "4"):
        print("스위프트 버전 4입니다.")
    default:
        break
    }

// 튜플의 switch문 바인딩
// 각 case 내에서 튜플의 각 요소를 활용하려 할 때 사용
switch coordinate {
    case (let x, let y):
        print("좌표는 (\x), (\y) 입니다.")
    default: 
        break
}

// 튜플의 switch문 바인딩/where절
// 어떤 조건에 따라 튜플 케이스를 처리하려고 주로 사용
switch coordinate {
    case let(x, y) where x == y:
        print("좌표는 (\x), (\y) 입니다.")
    default: 
        break
}

```

## 삼항연산자와 범위연산자
### 삼항연산자 
```swift
condtion ? print("1") : print("2")

// ex)
var name = a > 5 ? "스티브" : "홍길동"
```
- 물음표: 앞의 조건의 참 / 거짓 여부를 묻는 표현
- 콜론: 콜론을 기준으로 앞의 조건이 참일 경우 앞 문장 실행, 아닌 경우(거짓) 뒷 문장 실행

### 범위연산자
- 범위연산자: 제한된 숫자의 범위를 표기하기 위한 연산자. 자체가 특별한 티입을 의미
  ```swift
  1...10 // 1부터 10까지 묶음)
  ```
1. Closed Range Operator
   ```swift
   1...10   // 정수 1부터 10이하
   1...     // 정수 1이상
   ...10    // 정수 10아하
   ```
2. Half-Open Range Operator
   ```swift
   1 ..<10  // 정수1부터 10미만
   ..<10    // 정수 10미만
   ```

### 패턴매칭 연산자(~=)
```swift
a...b ~= age    // 오른쪽에 있는 표현식이 왼쪽 범위에 포함되는지에 따라 참, 거짓 리턴
```

## 반복문 
### 반복문(for문)
- 범위 or 컬렉션(Int 범위 / 문자열 / 컬렉션(배열, 딕셔너리, set)에서 item을 한개씩 뽑아, 중괄호 안에서 반복 실행함을 의미
```swift
for item in 범위 or 컬렉션 {
    code
}
```

- 와일드카드 패턴: 일반적으로 상수/변수 저장할 필요없이, 생략해도 되는 경우에 사용
```swift
// 와일드카드 패턴
for _ in 1... 5 {
    code
}

let _ = (1...10).reversed
```
ex)
```swift
for item in (1...10).reversed {

}

for item in stride(from: 1, to: 15, by: 2) {

}
```

### 반복문(while, repeat-while문)
- 조건을 만족하는 동안, 중괄호 안의 내용을 계속 반복적으로 실행함을 의미
    ```swift
    while 참, 거짓 판단 문장 {
    }
    ```

- while문과 동일, 다만, 조건에 관계없이 일단 문장  실행한 후 조건에 따라 반복적으로 실행할지 여부 확인 후 다시 실행
  ```swift
  repeat {
    code
  } while 참, 거짓 판단 문장
  ```

### 반복문 응용
- for문
  - 반복 횟수를 미리 알고 있거나, 컬렉션, 범위 등을 이용할 때
  - 범위 ,컬렉션, 문자열, stride 등
- while문
  - 반복 횟수가 미리 정해져 있지 않고 조건에 따라 바뀔때 사용
  - 조건

#### 제어전송문
- 중첩 사용 시 가장 안전한 반복문에 영향을 미침
- labeled문 사용 가능
- continue
  - 반복문에서 다음 주기로 넘어가서 계속함을 의미
  - 아래의 문장들을 무시하고 싸이클로 넘어감
  ```swift
  for num in 1...20 {
    if num % 2 == 0 {
        continue
    }
    print(num)
  }
  ```
- break 
  - 반목문을 아예 중지
  - 반복문의 모든 싸이클을 중지하고 반복문을 벗어난 후 다음 문장으로 넘어감
  ```swift
  for num in 1...20 {
    if num % 2 == 0 {
        break
    }
    print(num)
  }
  ```
