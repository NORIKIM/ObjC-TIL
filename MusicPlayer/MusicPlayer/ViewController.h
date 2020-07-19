//
//  ViewController.h
//  MusicPlayer
//
//  Created by 김지나 on 2020/05/31.
//  Copyright © 2020 김지나. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (nonatomic) AVAudioPlayer * player;
@property (nonatomic) NSTimer * time;

@property (weak, nonatomic) IBOutlet UIButton *playBtn;
@property (weak, nonatomic) IBOutlet UILabel *playTimeLB;
@property (weak, nonatomic) IBOutlet UISlider *playSlider;

- (IBAction)playMusic:(id)sender;
- (IBAction)musicTime:(id)sender;


@end

