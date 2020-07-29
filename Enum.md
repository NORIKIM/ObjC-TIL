# Enum

<img src="https://user-images.githubusercontent.com/31604976/88672386-5b5aec00-d122-11ea-84e4-33fe75c124c9.jpeg">

```objective-c
enum num {
  A,
  B,
  C
};
```

enum num을 Number라고 이름짖기

```objective-c
typedef num Number;
=
enum num Number;
```

각 케이스별 동작 설정

```objective-c
switch(Number) {
  case A:
    NSLog(@"A");
    break;
  case B:
    NSLog(@"B");
    break;
  case C:
    NSLog(@"C");
    break;
  default:
    break;    
}
```

