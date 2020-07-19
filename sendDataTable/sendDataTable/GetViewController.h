//
//  GetViewController.h
//  sendDataTable
//
//  Created by 김지나 on 2020/07/19.
//  Copyright © 2020 김지나. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol selectCompanyDelegate <NSObject>
-(NSString *)selectt;
@end

@interface GetViewController : UIViewController
@property (nonatomic) id<selectCompanyDelegate> companyDelegate;

@property (weak, nonatomic) IBOutlet UILabel *getSiteLB;
@property (nonatomic) NSMutableDictionary * data;
@property (nonatomic) NSString * name;

@end

NS_ASSUME_NONNULL_END
