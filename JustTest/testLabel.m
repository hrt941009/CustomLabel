//
//  testLabel.m
//  JustTest
//
//  Created by henyep on 15/8/11.
//  Copyright (c) 2015年 com. All rights reserved.
//

#import "testLabel.h"

@implementation testLabel
-(void)drawTextInRect:(CGRect)rect{
    [super drawTextInRect:rect];
    CGFloat x=0;
    CGFloat y=self.frame.size.height*0.5;
    CGFloat w=self.frame.size.width;
    CGFloat h=0.5;
    UIRectFill(CGRectMake(x, y, w, h));
}



@end
