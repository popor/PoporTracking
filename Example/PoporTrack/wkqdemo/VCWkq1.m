//
//  VCWkq1.m
//  PoporTrack_Example
//
//  Created by apple on 2018/9/27.
//  Copyright © 2018年 popor. All rights reserved.
//

#import "VCWkq1.h"

#import "VCWkq2.h"

@interface VCWkq1 ()

@end

@implementation VCWkq1

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = NSStringFromClass([self class]);
 
    
    {
        UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithTitle:@"VCWkq2" style:UIBarButtonItemStylePlain target:self action:@selector(VCWkq2Action)];
        self.navigationItem.rightBarButtonItems = @[item1];
    }
}

- (void)VCWkq2Action {
    [self.navigationController pushViewController:[VCWkq2 new] animated:YES];
}

@end
