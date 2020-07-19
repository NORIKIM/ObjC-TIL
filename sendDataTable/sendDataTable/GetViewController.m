//
//  GetViewController.m
//  sendDataTable
//
//  Created by 김지나 on 2020/07/19.
//  Copyright © 2020 김지나. All rights reserved.
//

#import "GetViewController.h"
#import "ViewController.h"

@interface GetViewController ()

@end

@implementation GetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _data = [NSMutableDictionary dictionaryWithObjects:@[@"Google"] forKeys:@[@"site"]];
    NSLog(@"%@======1===",_data);
    _name = [_companyDelegate selectt];
    [_data setObject:_name forKey:@"site"];
    NSLog(@"%@====2======",_data);
    
    _getSiteLB.text = _name;
    
}





@end
