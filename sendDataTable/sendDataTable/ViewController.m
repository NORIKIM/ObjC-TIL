//
//  ViewController.m
//  sendDataTable
//
//  Created by 김지나 on 2020/07/19.
//  Copyright © 2020 김지나. All rights reserved.
//

#import "ViewController.h"
#import "GetViewController.h"

@interface ViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic) IBOutlet UITableView * table;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (nonatomic) NSDictionary * dic;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dic = @{@"site1":@"Google", @"site2":@"Github"};
}


- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSArray * dics = [self.dic allKeys];
    NSArray * key = [dics objectAtIndex:indexPath.row];
    NSString * value = [self.dic objectForKey:key];
    
    cell.textLabel.text = value;
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.dic count];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSArray * dics = [self.dic allKeys];
    NSArray * key = [dics objectAtIndex:indexPath.row];
    NSString * value = [self.dic objectForKey:key];
    
    
    [_button setTitle:value forState:UIControlStateNormal];
    _selectCompany = value;
    [_table setHidden:YES];
}

- (IBAction)buttonAction:(UIButton *)sender {
    [_table setHidden:NO];
}

- (IBAction)goNext:(UIButton *)sender {
    GetViewController * getVC = [self.storyboard instantiateViewControllerWithIdentifier:@"get"];
    getVC.companyDelegate = self;
    [self presentViewController:getVC animated:NO completion:nil];
}

-(NSString *)selectt {
    return _selectCompany;
}

@end
