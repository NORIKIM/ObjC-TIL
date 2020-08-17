# Delegate

데이터를 받느 쪽에서 딜리게이트르 생성한다.

## Receiver

```objective-c
// ReceiveVC.h
@protocol SelectDelegate<NSObject>
  - (NSSttring *)select;
@end
  
@interface ReceiveVC : UIViewController
@property (nonatomic) id<SelectDelegate>delegate;
@property (weak,nonatomic) IBOultet UILabel * lb;
@end
```

```objective-c
// ReceiveVC.m
#import "SendVC.h"
@implementation ReceiveVC
  - (void) viewDidLoad {
  _lb.text = [delegate select];
}
```

## Sender

```objective-c
//SenderVC.h
#import "ReceiveVC.h"
@interface SenderVC : UIViewController<SeelctDelegate>
@end
```

```objective-c
//SenderVC.m
@implementation SenderVC
  -(NSString *)select {
  return @"selectString";
}
@end
```

## 결과

```objective-c
lb.text = @"selectString"
```

lb 레이블의 텍스트가 selectString으로 변경된다.