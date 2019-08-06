//
//  SJYTableViewCell1.m
//  8.6考核
//
//  Created by 沈君瑶 on 2019/8/6.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import "SJYTableViewCell1.h"

@implementation SJYTableViewCell1

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    _headImageView = [[UIImageView alloc]init];
    [self.contentView addSubview:_headImageView];
    
    _nameLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_nameLabel];
    
    _talkLabel = [[UILabel alloc]init];
    [self.contentView addSubview:_talkLabel];
    
    _picImageView = [[UIImageView alloc]init];
    [self.contentView addSubview:_picImageView];
    
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
    
    _picImageView.frame = CGRectMake(70, 80, 105, 150);
    
    _didianLabel.frame = CGRectMake(70, 235, 300, 30);
    _didianLabel.textColor = [UIColor colorWithRed:0.54f green:0.59f blue:0.70f alpha:1.00f];
    
    _timeLabel.frame = CGRectMake(70, 260, 300, 30);
    _timeLabel.textColor = [UIColor colorWithRed:0.82f green:0.82f blue:0.82f alpha:1.00f];
    
}




@end
