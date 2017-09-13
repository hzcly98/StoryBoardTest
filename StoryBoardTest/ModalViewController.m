//
//  ModalViewController.m
//  StoryBoardTest
//
//  Created by 黄章成 on 2017/9/13.
//  Copyright © 2017年 黄章成. All rights reserved.
//

#import "ModalViewController.h"

@interface ModalViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLab;

@end

@implementation ModalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleLab.text = self.title;
}

- (IBAction)backBtnClick:(id)sender {
    
//    [self dismissViewControllerAnimated:YES completion:nil];
    [self performSegueWithIdentifier:@"dismiss1" sender:sender];
}

@end
