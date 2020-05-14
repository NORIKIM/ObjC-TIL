//
//  ViewController.m
//  ImageDownload
//
//  Created by 김지나 on 2020/05/10.
//  Copyright © 2020 김지나. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize imgView, aictivityIndicatorView, downloadProgressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)download:(id)sender {
    imgView.image = nil ;
    [downloadProgressView setProgress:0.0 animated:NO];
    [aictivityIndicatorView startAnimating];
    
    // 세션 세팅
    NSURLSessionConfiguration *sessionConfiguration = [NSURLSessionConfiguration defaultSessionConfiguration];
    /* block 코딩을 위해 삭제되는 코드
     NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:self delegateQueue:[NSOperationQueue mainQueue]];*/
    NSURLSession *session = [NSURLSession sessionWithConfiguration:sessionConfiguration delegate:nil delegateQueue:[NSOperationQueue mainQueue]];
    downloadTask = [session downloadTaskWithURL:[NSURL URLWithString:@"https://raw.githubusercontent.com/ChoiJinYoung/iphonewithswift2/master/sample.jpeg"] completionHandler:^(NSURL *location, NSURLResponse *response, NSError *error) {
        imgView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:location]];
        [aictivityIndicatorView stopAnimating];
    }]; // 어디에 다운로드 요청 하는지 알려줌
    [downloadTask resume]; // 다운로드 시작!
}

/* block 코딩을 위해 삭제되는 코드
// 체택한 딜리게이트의 required 메소드
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didFinishDownloadingToURL:(NSURL *)location {
    NSDate *data = [NSData dataWithContentsOfURL:location]; // 입력해준 URL안의 데이터를 가져옴
    imgView.image = [UIImage imageWithData:data];
    [aictivityIndicatorView stopAnimating];
}

// 프로그레스 뷰에 이미지 다운로드 상황을 보여주기 위한 메소드
- (void)URLSession:(NSURLSession *)session downloadTask:(NSURLSessionDownloadTask *)downloadTask didWriteData:(int64_t)bytesWritten totalBytesWritten:(int64_t)totalBytesWritten totalBytesExpectedToWrite:(int64_t)totalBytesExpectedToWrite {
    // totalBytesExpectedToWrite : 전체 용량
    // totalBytesWritten : 다운받은 누적 용량
    // didWriteData : 다운받고 있는 하나하나의 용량
    
    float progress = (float)totalBytesWritten/(float)totalBytesExpectedToWrite;
    [downloadProgressView setProgress:progress animated:YES];
}*/

// 다운로드 정지
- (IBAction)suspend:(id)sender {
    [downloadTask suspend];
}

// 다운로드 시작
- (IBAction)resume:(id)sender {
    [downloadTask resume];
}

// 다운로드 취소
- (IBAction)cancel:(id)sender {
    [downloadTask cancel];
    [downloadProgressView setProgress:0.0 animated:NO];
    [aictivityIndicatorView stopAnimating];
}

@end
