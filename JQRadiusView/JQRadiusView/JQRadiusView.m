//
//  JQRadiusView.m
//  JQRadiusView
//
//  Created by 韩俊强 on 15/8/11.
//  Copyright (c) 2017年 HaRi. All rights reserved.
//

#import "JQRadiusView.h"

@interface JQRadiusView ()
@property (strong, nonatomic) UIColor *bgColor;
@end

@implementation JQRadiusView

- (void)setBackgroundColor:(UIColor *)backgroundColor {
    [super setBackgroundColor:[UIColor clearColor]];
    _bgColor = backgroundColor;
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    UIBezierPath *p = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:(_bottomLeftRadius?UIRectCornerBottomLeft:0)|(_bottomRightRadius?UIRectCornerBottomRight:0)|(_topLeftRadius?UIRectCornerTopLeft:0)|(_topRightRadius?UIRectCornerTopRight:0) cornerRadii:CGSizeMake(_cornerRadius, 0.f)];
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextAddPath(c, p.CGPath);
    CGContextClosePath(c);
    CGContextClip(c);
    CGContextAddRect(c, rect);
    CGContextSetFillColorWithColor(c, _bgColor.CGColor);
    CGContextFillPath(c);
}

@end
