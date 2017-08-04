//
//  JQRadiusView.h
//  JQRadiusView
//
//  Created by 韩俊强 on 15/8/11.
//  Copyright (c) 2017年 HaRi. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface JQRadiusView : UILabel
@property (assign, nonatomic) IBInspectable BOOL topRightRadius;
@property (assign, nonatomic) IBInspectable BOOL topLeftRadius;
@property (assign, nonatomic) IBInspectable BOOL bottomRightRadius;
@property (assign, nonatomic) IBInspectable BOOL bottomLeftRadius;
@property (assign, nonatomic) IBInspectable CGFloat cornerRadius;
@end
