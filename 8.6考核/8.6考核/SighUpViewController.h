//
//  SighUpViewController.h
//  8.6考核
//
//  Created by 沈君瑶 on 2019/8/6.
//  Copyright © 2019 沈君瑶. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol SighUpViewControllerDelegate <NSObject>
- (void)Name:(NSString *)name andPassword:(NSString *)password;

@end
@interface SighUpViewController : UIViewController

@property id<SighUpViewControllerDelegate>delegate;

@end

NS_ASSUME_NONNULL_END
