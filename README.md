# FlexLayoutEx
FlexLayout 연습 레포

## 참고
- [FlexLayout - github](https://github.com/layoutBox/FlexLayout#installation)
- [FlexLayout Docs](https://layoutbox.github.io/FlexLayout/1.1/Classes/Flex.html#/s:10FlexLayout0A0C7addItemACyF)

## 커스텀뷰 구성
- 루트 컨테이너 1개
    - rootFlexContainer
- 레이블 3개
    - firstLabel, secondLabel, thirdLabel
- 뷰 7개
    - redView, orangeView, yellowView, greenView, blueView, purpleView, grayView

## Examples
CustomView
```swift
    func addSubviews() {
        addSubview(rootFlexContainer)
        addSubviews(redView)
    }
    
    func setLayout() {
        rootFlexContainer.flex.direction(.column).padding(12).define { flex in
            flex.addItem().direction(.row).define { flex in
                flex.addItem(redView).width(100).aspectRatio(1.5)
            }
        }
    }
```

### Flex
```swift
public class Flex
```
- 요약
    - FlexLayout interface.
    - 이 인터페이스는 어떠한 UIView 클래스 인스턴스로부터도 접근이 가능하다.

### define(_:)
```swift
public func define(_ closure: (_ flex: Flex) -> Void) -> Flex
```
- 요약
    - flexbox 구조를 잡는데 쓰인다.(쉽게 이야기하면 뷰를 베치할 틀 잡기?)
    - 어떤 아이템들을 어떤 방식으로 나열/배치할지 define의 클로저 안에 정의한다.
- 파라미터
    - `closure` : 다른 flex item이나 container들을 추가하는데 쓰인다.
- 리턴값
    - flex interface

### addItem(_:)
```swift
public func addItem(_ view: UIView) -> Flex
```
- 요약
    - flex item(UIView)를 flex container에 추가하는 메서드
    - 내부적으로 이 메서드는 flexbox를 사용 가능하고 하위뷰(subviews)를 가진 UIView를 추가하는 작업을 한다.
- 파라미터
    - `view`: 해당 flex container에 view를 추가한다.
- 리턴값
    - 추가된 뷰의 flex interface.

### direction(_:)
```swift
public func direction(_ value: Direction) -> Flex
```
- 요약
    - main-axis를 설정한다.
    - flex item들의 방향(direction)을 정의함으로써 flex container 안에서의 위치가 정해진다.
    - text방향이 LTR(left to right) 이면, row는 LTR, rowReverse는 RTL 이 된다.
    - 
- 파라미터
    - value : enum타입의 Direction. stackView의 axis라고 보면 된다. 
        - `.column` : 기본값. flexible item들이 column과 같이 수직(vertically)으로 보여진다.
        - `.row` : flexible item들이 row와 같이 수평(horizontally)으로 보여진다.
        - `.columnReverse` : column과 같지만, 역순
        - `.rowReverse` : row와 같지만, 역순


