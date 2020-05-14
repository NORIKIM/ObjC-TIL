//
//  ViewController.h
//  ImageDownload
//
//  Created by 김지나 on 2020/05/10.
//  Copyright © 2020 김지나. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<NSURLSessionDownloadDelegate> {
    // 세션 테스크 생성 변수
    NSURLSessionTask *downloadTask;
}

@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *aictivityIndicatorView;
@property (weak, nonatomic) IBOutlet UIProgressView *downloadProgressView;

- (IBAction)download:(id)sender;
- (IBAction)suspend:(id)sender;
- (IBAction)resume:(id)sender;
- (IBAction)cancel:(id)sender;

@end

