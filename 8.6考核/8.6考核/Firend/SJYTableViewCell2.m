//
//  SJYTableViewCell2.m
//  8.6考核
//
//  Created by 沈君瑶 on 2019/8/6.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SJYTableViewCell2.h"

@implementation SJYTableViewCell2
//@property UIImageView *headImageView;
//@property UILabel *nameLabel;
//@property UILabel *talkLabel;
//@property UIImageView *picImageView1;
//@property UIImageView *picImageView2;
//@property UILabel *didianLabel;
//@property UILabel *timeLabel;

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _headImageView = [[UIImageView alloc]init];
    [self.contentView addSubview:_headImageView];
    
    _nameLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_nameLabel];
    
    _talkLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_talkLabel];
    
    _picImageView1 = [[UIImageView alloc]init];
    [self.contentView addSubview:_picImageView1];
    
    _picImageView2 = [[UIImageView alloc]init];
    [self.contentView addSubview:_picImageView2];
    
    _didianLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_didianLabel];
    
    _timeLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_timeLabel];
    
    return self;
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    _headImageView.frame = CGRectMake(5, 5, 60, 60);
    
    _nameLabel.frame = CGRectMake(70, 5, 300, 30);
    _nameLabel.textColor = [UIColor colorWithRed:0.39f green:0.44f blue:0.59f alpha:1.00f];
    
    _talkLabel.frame = CGRectMake(70, 40, 300, 30);
    
    _picImageView1.frame = CGRectMake(70, 80, 100, 100);
    
    _picImageView2.frame = CGRectMake(175, 80, 100, 100);
    
    _didianLabel.frame = CGRectMake(70, 190, 300, 30);
    _didianLabel.textColor = [UIColor colorWithRed:0.54f green:0.59f blue:0.70f alpha:1.00f];
    
    _timeLabel.frame = CGRectMake(70, 220, 300, 30);
    _timeLabel.textColor = [UIColor colorWithRed:0.82f green:0.82f blue:0.82f alpha:1.00f];
    
}



@end
