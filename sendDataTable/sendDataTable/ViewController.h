//
//  ViewController.h
//  sendDataTable
//
//  Created by 김지나 on 2020/07/19.
//  Copyright © 2020 김지나. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GetViewController.h"



@interface ViewController : UIViewController<selectCompanyDelegate>
@property (nonatomic) NSString * selectCompany;
@end

