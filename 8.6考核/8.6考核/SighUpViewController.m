//
//  SighUpViewController.m
//  8.6考核
//
//  Created by 沈君瑶 on 2019/8/6.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SighUpViewController.h"

@interface SighUpViewController ()

@property (nonatomic, strong)UITextField *userName;
@property (nonatomic, strong)UITextField *userPassword;
@property (nonatomic, strong)UIButton *useLogin;

@end

@implementation SighUpViewController

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
    [_useLogin setTitle:@"确认注册" forState:UIControlStateNormal];
    [_useLogin setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:_useLogin];
    [_useLogin addTarget:self action:@selector(pressSighUp) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)pressSighUp{
    [self dismissViewControllerAnimated:YES completion:nil];
    if ([_delegate respondsToSelector:@selector(Name:andPassword:)]) {
        [_delegate Name:_userName.text andPassword:_userPassword.text];
    }
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [_userName resignFirstResponder];
    [_userPassword resignFirstResponder];
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
