//
//  ViewController.m
//  MusicPlayer
//
//  Created by 김지나 on 2020/05/31.
//  Copyright © 2020 김지나. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <UIKit/UIKit.h>
@interface ViewController ()

@end

@implementation ViewController
@synthesize player, time, playBtn, playTimeLB, playSlider;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)playMusic:(id)sender {
    BOOL buttonState = [playBtn isSelected];
    
    UIImage * play = [UIImage imageNamed:@"button_play"];
    UIImage * pause = [UIImage imageNamed:@"button_pause"];
    
    if (buttonState) {
        [sender setImage:pause forState:UIControlStateNormal];
        [player play];
        [self timeTrack];
    } else {
        [sender setImage:play forState:UIControlStateNormal];
        [player pause];
        [self invalidateTime];
    }
}

- (IBAction)musicTime:(id)sender {
    
}

- (void) timeTrack {
    time = [NSTimer scheduledTimerWithTimeInterval:0.01 repeats:true block: ^(NSTimer *time) {
        if (playSlider.tracking) {}
        
        [self timeConvertString:player.currentTime];
        playSlider.value = (float)player.currentTime;
        
    }];
    time.fire;
}

- (void) timeConvertString:(NSTimeInterval)time {
    NSInteger *min = (NSInteger)time / 60;
    NSInteger *sec = (NSInteger)time % 60;
    NSInteger *miliSec = ((NSInteger)time % 1) * 100;
    
    playTimeLB.text = @"%02d:%02d:%02d",min,sec,miliSec;
}

- (void) invalidateTime {
    time.invalidate;
    time = nil;
}

@end
