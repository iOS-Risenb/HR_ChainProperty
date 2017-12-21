//
//  XX_ViewController.m
//  HR_ChainProperty
//
//  Created by obgniyum on 12/20/2017.
//  Copyright (c) 2017 obgniyum. All rights reserved.
//

#import "XX_ViewController.h"
#import "HR_ChainProperty.h"

@interface XX_ViewController ()

@end

@implementation XX_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", @"中国人".HR_UTF8());
    
//    self.view.backgroundColor = UIColor.HR_HexString(@"0X0000FF");
//    self.view.backgroundColor = UIColor.HR_Hex(0X0000FF);
    
    self.view.backgroundColor = UIColor.HR_RGB(255, 0, 0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
