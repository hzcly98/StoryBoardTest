//
//  CustomSegue.m
//  StoryBoardTest
//
//  Created by 黄章成 on 2017/9/13.
//  Copyright © 2017年 黄章成. All rights reserved.
//

#import "MyCustomSegue.h"

@implementation MyCustomSegue

- (void)perform {
    
    UIViewController *srcVC = self.sourceViewController;
    UIViewController *destVC = self.destinationViewController;
    
    [srcVC addChildViewController:destVC];
    [srcVC.view addSubview:destVC.view];
    
    destVC.view.frame = CGRectMake(CGRectGetWidth(srcVC.view.frame), 0, CGRectGetWidth(srcVC.view.frame), CGRectGetHeight(srcVC.view.frame));
    [UIView animateWithDuration:0.25 animations:^{
        destVC.view.frame = CGRectMake(0, 0, CGRectGetWidth(srcVC.view.frame), CGRectGetHeight(srcVC.view.frame));
    } completion:^(BOOL finished) {
        [destVC didMoveToParentViewController:srcVC];
    }];
    
    
    
}

@end
