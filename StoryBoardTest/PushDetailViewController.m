//
//  PushDetailViewController.m
//  StoryBoardTest
//
//  Created by 黄章成 on 2017/9/13.
//  Copyright © 2017年 黄章成. All rights reserved.
//

#import "PushDetailViewController.h"

@interface PushDetailViewController ()

@end

@implementation PushDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)backClick:(id)sender {
    
    [self performSegueWithIdentifier:@"pop1" sender:sender];
}


@end
