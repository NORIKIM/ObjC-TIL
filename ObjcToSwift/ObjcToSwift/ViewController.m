//
//  ViewController.m
//  ObjcToSwift
//
//  Created by 김지나 on 2020/08/17.
//  Copyright © 2020 김지나. All rights reserved.
//

#import "ViewController.h"
#import "ObjcToSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)sendData:(UIButton *)sender {
    [self performSegueWithIdentifier:@"segue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"segue"]) {
        SwiftController * vc = (SwiftController *)segue.destinationViewController;
        vc.data = @"from objc";
    }
}

@end
