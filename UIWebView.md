# UIWebView

## POST

```objective-c
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webview;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self connectToServer];
    
}

- (void)connectToServer {
    NSString *smsURL = @"http://www.google.co.kr";
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    
    NSString *post = [NSString stringWithFormat:@"password=%@&id=%@",@"password",@"id"];
    NSData *postData = [post dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES];
    NSString *postLength = [NSString stringWithFormat:@"%d",[postData length]];
    
    [request setURL:[NSURL URLWithString:smsURL]];
    [request setHTTPMethod:@"POST"];
    [request setValue:postLength forHTTPHeaderField:@"Content-Length"];
    [request setValue:@"Mozilla/4.0 (compatible;)" forHTTPHeaderField:@"User-Agent"];
    [request setValue:@"application/x-www-form-urlencoded" forHTTPHeaderField:@"Content-Type"];
    [request setHTTPBody:postData];
    
    [_webview loadRequest:request];
}

```

- setValue:forHTTPHeaderField:

  헤더 필드에 HTTP 응답 데이터 유형 설정

