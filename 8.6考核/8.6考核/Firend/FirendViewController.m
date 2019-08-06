//
//  FirendViewController.m
//  8.6考核
//
//  Created by 沈君瑶 on 2019/8/6.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "FirendViewController.h"
#import "SJYTableViewCell1.h"
#import "SJYTableViewCell2.h"

static NSString *str1 = @"SJYCell1";
static NSString *str2 = @"SJYCell2";
@interface FirendViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong)UITableView *firendTableView;
@property  NSArray *arrayHead;
@property NSArray *arrayName;
@property NSArray *arrayTalk;
@property NSArray *arraydidian;
@property NSArray *arrayTime;
@property NSArray *arraypic;
@property NSArray *arraypic2;

@end

@implementation FirendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
#pragma mark -- 导航栏
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"左箭头.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    [leftButton setTintColor:[UIColor blackColor]];
    self.navigationItem.leftBarButtonItem = leftButton;
#pragma mark -- 头视图
    UIView *headView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 250)];
    UIImageView *allImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"main_img4.png"]];
    allImageView.frame = CGRectMake(0, 0, 375, 200);
    [headView addSubview:allImageView];
    UIImageView *peopleImageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"sixin_img1.png"]];
    peopleImageView.frame = CGRectMake(295, 160, 60, 60);
    [headView addSubview:peopleImageView];
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(250, 170, 40, 30)];
    nameLabel.text = @"摇曳";
    nameLabel.textColor = [UIColor whiteColor];
    [headView addSubview:nameLabel];
    
#pragma mark -- 单元格
    _firendTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    [self.view addSubview:_firendTableView];
    _firendTableView.delegate = self;
    _firendTableView.dataSource = self;
    _firendTableView.tableHeaderView = headView;
    _firendTableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    [_firendTableView registerClass:[SJYTableViewCell1 class] forCellReuseIdentifier:str1];
    [_firendTableView registerClass:[SJYTableViewCell2 class] forCellReuseIdentifier:str2];
    
    
    _arrayHead = [NSArray arrayWithObjects: @"sixin_img1.png", @"sixin_img1.png", @"sixin_img2.png", @"sixin_img2.png", @"sixin_img1.png", @"sixin_img2.png", @"sixin_img1.png", @"sixin_img2.png", @"sixin_img2.png", @"sixin_img1.png", nil];
    _arrayName = [NSArray arrayWithObjects:@"yoyo1", @"yoyo2", @"yoyo3", @"yoyo4", @"yoyo5", @"yoyo6", @"yoyo7", @"yoyo8", @"yoyo9", @"yoyo10", nil];
    _arrayTalk = [NSArray arrayWithObjects:@"你好呀1", @"你好呀2", @"你好呀3", @"你好呀4", @"你好呀5", @"你好呀6", @"你好呀7", @"你好呀8", @"你好呀9", @"你好呀10", nil];
    _arraydidian = [NSArray arrayWithObjects:@"西安1", @"西安2", @"西安3", @"西安4", @"西安5", @"西安6", @"西安7", @"西安8", @"西安9", @"西安10", nil];
    _arrayTime = [NSArray arrayWithObjects:@"1天前", @"2天前", @"3天前", @"4天前", @"5天前", @"6天前", @"7天前", @"8天前", @"9天前", @"10天前", nil];
    _arraypic = [NSArray arrayWithObjects:@"works_img3.png", @"1.jpg", @"works_img5.png", @"2.jpg", @"works_img3.png", @"1.jpg", @"works_img5.png", @"2.jpg", @"works_img3.png", @"1.jpg", nil];
    _arraypic2 = [NSArray arrayWithObjects:@"works_img3.png", @"works_img3.png", @"works_img5.png", @"works_img5.png", @"works_img3.png", @"works_img3.png", @"works_img5.png", @"works_img5.png", @"works_img3.png", @"works_img3.png", nil];
    
}


- (void)pressBack{
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 10;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 0.1;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *view = [[UIView alloc]init];
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    return 0.1;
}
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    UIView *view = [[UIView alloc]init];
    return view;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section % 2 == 0) {
        return 310;
    }
    else {
        return 270;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section % 2 == 0) {
        SJYTableViewCell1 *sjycell1 = [_firendTableView dequeueReusableCellWithIdentifier:str1 forIndexPath:indexPath];
        sjycell1.headImageView.image = [UIImage imageNamed:[_arrayHead objectAtIndex:indexPath.section]];
        sjycell1.nameLabel.text = [_arrayName objectAtIndex:indexPath.section];
        sjycell1.talkLabel.text = [_arrayTalk objectAtIndex:indexPath.section];
        sjycell1.picImageView.image = [UIImage imageNamed:[_arraypic objectAtIndex:indexPath.section]];
        sjycell1.didianLabel.text = [_arraydidian objectAtIndex:indexPath.section];
        sjycell1.timeLabel.text = [_arrayTime objectAtIndex:indexPath.section];
        return sjycell1;
    }
    else{
        SJYTableViewCell2 *sjycell2 = [_firendTableView dequeueReusableCellWithIdentifier:str2 forIndexPath:indexPath];
        sjycell2.headImageView.image = [UIImage imageNamed:[_arrayHead objectAtIndex:indexPath.section]];
        sjycell2.nameLabel.text = [_arrayName objectAtIndex:indexPath.section];
        sjycell2.talkLabel.text = [_arrayTalk objectAtIndex:indexPath.section];
        sjycell2.picImageView1.image = [UIImage imageNamed:[_arraypic objectAtIndex:indexPath.section]];
        sjycell2.picImageView2.image = [UIImage imageNamed:[_arraypic2 objectAtIndex:indexPath.section]];
        sjycell2.didianLabel.text = [_arraydidian objectAtIndex:indexPath.section];
        sjycell2.timeLabel.text = [_arrayTime objectAtIndex:indexPath.section];
        return sjycell2;
    }
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
