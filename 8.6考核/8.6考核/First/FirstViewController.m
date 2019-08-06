//
//  FirstViewController.m
//  8.6考核
//
//  Created by 沈君瑶 on 2019/8/6.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "FirstViewController.h"
#import "FirendViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithTitle:@"push" style:UIBarButtonItemStyleDone target:self action:@selector(pressFirend)];
    self.navigationItem.rightBarButtonItem = rightButton;
    
}

- (void)pressFirend{
    self.hidesBottomBarWhenPushed = YES;
    FirendViewController *firendViewController = [[FirendViewController alloc]init];
    firendViewController.title = @"朋友圈";
    [self.navigationController pushViewController:firendViewController animated:YES];
}

- (void)viewWillDisappear:(BOOL)animated{
    self.hidesBottomBarWhenPushed = NO;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
