//
//  FirstTableViewController.m
//  StoryBoardTest
//
//  Created by 黄章成 on 2017/9/13.
//  Copyright © 2017年 黄章成. All rights reserved.
//

#import "FirstTableViewController.h"

@interface FirstTableViewController ()

@end

@implementation FirstTableViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    NSLog(@"111");
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (IBAction)pushBtnClick:(id)sender {
    
    // 让button点击去实现标志为“push2”的segue跳转，同样是可以的！
    [self performSegueWithIdentifier:@"push2" sender:sender];
    
}

- (IBAction)modalBtnClick:(id)sender {
    
    [self performSegueWithIdentifier:@"modal1" sender:sender];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    UIViewController *vc = segue.destinationViewController;
    vc.title = segue.identifier;
    vc.hidesBottomBarWhenPushed = YES;
    NSLog(@"%s",__func__);
    
}

//- (void)performSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
//    
//    NSLog(@"%s",__func__);
//    
//}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender {
    
    NSLog(@"%s",__func__);
    
    return YES;
}

//PushVc界面返回到此界面调用的方法(方法名可以随便取)
- (IBAction)ViewController1UnwindSegue:(UIStoryboardSegue *)unwindSegue {
    
    NSLog(@"%s",__func__);
}

//PushDetailVc界面返回到此界面调用的方法(方法名可以随便取)
- (IBAction)ViewControllerUnwindSegue:(UIStoryboardSegue *)sender{
    NSLog(@"%s",__func__);
}
@end
