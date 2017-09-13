//
//  MyCustomPopSegue.m
//  StoryBoardTest
//
//  Created by 黄章成 on 2017/9/13.
//  Copyright © 2017年 黄章成. All rights reserved.
//

#import "MyCustomPopSegue.h"

@implementation MyCustomPopSegue
- (void)perform {
    
    UIViewController *srcVC = self.sourceViewController;
    UIViewController *destVC = self.destinationViewController;
    
    [UIView animateWithDuration:0.25 animations:^{
        srcVC.view.frame = CGRectMake(CGRectGetWidth(srcVC.view.frame), 0, CGRectGetWidth(srcVC.view.frame), CGRectGetHeight(srcVC.view.frame));
    } completion:^(BOOL finished) {
        [destVC.view removeFromSuperview];
        [destVC removeFromParentViewController];
    }];
    
    
    
}
@end
