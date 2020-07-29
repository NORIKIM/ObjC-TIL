# UDID & UUID

|         | UDID                                                         | UUID                                                         |
| ------- | :----------------------------------------------------------- | :----------------------------------------------------------- |
| 정   의 | 기기의 고유값                                                | 임의 생성한 고유값                                           |
| 장점    | 앱 재설치 등의 상황에서 값이 변경되지 않으므로 앱 구현상 고려할 이슈가 적다 | 기기 정보 취급을 하지 않아도 된다. 정보가 유실되더라도 큰 문제가 생길 확률이 낮다. |
| 단점    | 리퍼 등 사용자 기기의 변경이 있을 경우에 추가 구현을 필요로 한다. | 앱의 재설치 등의 상황에 대해 구현 상 UUID의 유지 및 삭제, 갱신이 이루어지는 로지을 구현해야 한다. |

UDID는 고유하게 할당된 40개의 숫자와 문자열이다. 이 값이 개인정보로서의 가치를 가지고 있기 때문에 애플에서는 deprecate 시키고 UUID를 사용하라는 권고를 내렸다.

## UDID

Deprecated

## UUID

```objective-c
// 값이 계속 변함
CFUUIDREF uuid = CFUUIDCreate(kCFAllocatorDefault);
NSString * uuidStr = (NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuid);

// 값이 고정
[[UIDevice currentDevice]identifierForVendor]
```



로컬에 한번 저장하고 생성된 값이 있으면 더 이상 생성하지 않도록

```objective-c
if ([[NSUserDefaults standardUserDefaults] stringForKey:@"uuid"] == nil) {
  CFUUIDREF uuid = CFUUIDCreate(kCFAllocatorDefault);
NSString * uuidStr = (NSString *)CFUUIDCreateString(kCFAllocatorDefault, uuid);
  
  [[NSUserDefaults standardUserDefaults] setObject:string forKey: @"uuid"];
}

NSString * uniqueID = [[NSUserDefaults standardUserDefaults] stringForKey: @"uuid"];
```



