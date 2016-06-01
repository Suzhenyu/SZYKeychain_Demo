//
//  ViewController.m
//  Keychain_Demo
//
//  Created by apple on 16/6/1.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "DataManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btnSave = [UIButton buttonWithType:UIButtonTypeCustom];
    btnSave.frame = CGRectMake(100, 200, self.view.bounds.size.width - 200, 50);
    [btnSave setTitle:@"Save" forState:UIControlStateNormal];
    [btnSave setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnSave setBackgroundColor:[UIColor orangeColor]];
    [btnSave addTarget:self action:@selector(saveAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnSave];
    
    UIButton *btnShow = [UIButton buttonWithType:UIButtonTypeCustom];
    btnShow.frame = CGRectMake(100, 300, self.view.bounds.size.width - 200, 50);
    [btnShow setTitle:@"Show" forState:UIControlStateNormal];
    [btnShow setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnShow setBackgroundColor:[UIColor orangeColor]];
    [btnShow addTarget:self action:@selector(showAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnShow];
    
    UIButton *btnDelete = [UIButton buttonWithType:UIButtonTypeCustom];
    btnDelete.frame = CGRectMake(100, 400, self.view.bounds.size.width - 200, 50);
    [btnDelete setTitle:@"Delete" forState:UIControlStateNormal];
    [btnDelete setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btnDelete setBackgroundColor:[UIColor orangeColor]];
    [btnDelete addTarget:self action:@selector(deleteAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnDelete];
    
}

- (void)saveAction {
    [[DataManager shareManager] saveUsername:@"root" andPassword:@"123456"];
}

- (void)showAction {
    NSDictionary *dataDict = [[DataManager shareManager] loadUsernameAndPassword];
    NSLog(@"username:%@, password:%@.",[dataDict objectForKey:[DataManager shareManager].username],[dataDict objectForKey:[DataManager shareManager].password]);
}

- (void)deleteAction {
    [[DataManager shareManager] deleteUsernameAndPassword];
}

@end
