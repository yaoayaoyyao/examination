//
//  LoginViewController.m
//  8.6考核
//
//  Created by 沈君瑶 on 2019/8/6.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "LoginViewController.h"
#import "SighUpViewController.h"
#import "First/FirstViewController.h"
#import "Second/SecondViewController.h"
#import "Third/ThirdViewController.h"
#import "Four/FourViewController.h"
#import "Five/FiveViewController.h"

@interface LoginViewController ()<SighUpViewControllerDelegate>

@property (nonatomic, strong)UITextField *userName;
@property (nonatomic, strong)UITextField *userPassword;
@property (nonatomic, strong)UIButton *useLogin;
@property (nonatomic, strong)UIButton *useSighUp;
@property NSString *strName;
@property NSString *strPassword;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _userName = [[UITextField alloc]initWithFrame:CGRectMake(87, 100, 201, 40)];
    _userPassword = [[UITextField alloc]initWithFrame:CGRectMake(87, 180, 201, 40)];
    _userName.placeholder = @"请输入账号";
    _userPassword.placeholder = @"请输入密码";
    _userName.borderStyle = UITextBorderStyleBezel;
    _userPassword.borderStyle = UITextBorderStyleBezel;
    _userPassword.secureTextEntry = YES;
    [self.view addSubview:_userName];
    [self.view addSubview:_userPassword];
    
    _useLogin = [[UIButton alloc]initWithFrame:CGRectMake(137, 260, 101, 40)];
    _useLogin.layer.borderWidth = 1;
    _useLogin.layer.borderColor = [[UIColor blackColor]CGColor];
    _useLogin.layer.cornerRadius = 10;
    _useLogin.layer.masksToBounds = YES;
    [_useLogin setTitle:@"登录" forState:UIControlStateNormal];
    [_useLogin setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:_useLogin];
    [_useLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _useSighUp = [[UIButton alloc]initWithFrame:CGRectMake(137, 310, 101, 40)];
    _useSighUp.layer.borderWidth = 1;
    _useSighUp.layer.borderColor = [[UIColor blackColor]CGColor];
    _useSighUp.layer.cornerRadius = 10;
    _useSighUp.layer.masksToBounds = YES;
    [_useSighUp setTitle:@"注册" forState:UIControlStateNormal];
    [_useSighUp setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:_useSighUp];
    [_useSighUp addTarget:self action:@selector(pressSighUp) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)pressLogin{
    NSString *str1 = [NSString stringWithFormat:@"IOSnb123"];
    NSString *str2 = [NSString stringWithFormat:@"123456789"];
    
    if (([_userName.text isEqualToString:str1] && [_userPassword.text isEqualToString:str2]) || ([_userName.text isEqualToString:_strName] && [_userPassword.text isEqualToString:_strPassword])) {
        
        FirstViewController *firstViewController = [[FirstViewController alloc]init];
        firstViewController.view.backgroundColor = [UIColor whiteColor];
        firstViewController.title = @"1";
        UINavigationController *firstNavigationController = [[UINavigationController alloc]initWithRootViewController:firstViewController];
        
        SecondViewController *secondViewController = [[SecondViewController alloc]init];
        secondViewController.view.backgroundColor = [UIColor whiteColor];
        secondViewController.title = @"2";
        UINavigationController *secondNavigationController = [[UINavigationController alloc]initWithRootViewController:secondViewController];
        
        ThirdViewController *thirdViewController = [[ThirdViewController alloc]init];
        thirdViewController.view.backgroundColor = [UIColor whiteColor];
        thirdViewController.title = @"3";
        UINavigationController *thirdNavigationController = [[UINavigationController alloc]initWithRootViewController:thirdViewController];
        
        FourViewController *fourViewController = [[FourViewController alloc]init];
        fourViewController.view.backgroundColor = [UIColor whiteColor];
        fourViewController.title = @"4";
        UINavigationController *fourNavigationController = [[UINavigationController alloc]initWithRootViewController:fourViewController];
        
        FiveViewController *fiveViewController = [[FiveViewController alloc]init];
        fiveViewController.view.backgroundColor = [UIColor whiteColor];
        fiveViewController.title = @"5";
        UINavigationController *fiveNavigationController = [[UINavigationController alloc]initWithRootViewController:fiveViewController];
        
        NSArray *arrayNav = [NSArray arrayWithObjects: firstNavigationController, secondNavigationController, thirdNavigationController, fourNavigationController, fiveNavigationController, nil];
        
        UITabBarController *TBC = [[UITabBarController alloc]init];
        TBC.viewControllers = arrayNav;
        [self presentViewController:TBC animated:YES completion:nil];
    }
    
}
- (void)pressSighUp{
    SighUpViewController *sighUpViewController = [[SighUpViewController alloc]init];
    sighUpViewController.delegate = self;
    [self presentViewController:sighUpViewController animated:YES completion:nil];
}
-(void)Name:(NSString *)name andPassword:(NSString *)password{
    _strName = name;
    _userName.text = name;
    
    _strPassword = password;
    _userPassword.text = password;
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
