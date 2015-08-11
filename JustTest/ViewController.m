//
//  ViewController.m
//  JustTest
//
//  Created by henyep on 15/8/11.
//  Copyright (c) 2015年 com. All rights reserved.
//

#import "ViewController.h"
#import "testLabel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet testLabel *lbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _lbl.text=@"150";
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(100, 120, 100, 40)];
    NSString *oldPrice = @"¥ 12345";
    NSUInteger length = [oldPrice length];
    
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:oldPrice];
    [attri addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle) range:NSMakeRange(2, length-2)];
    [attri addAttribute:NSStrikethroughColorAttributeName value:[UIColor lightGrayColor] range:NSMakeRange(2, length-2)];
    [label setAttributedText:attri];
    label.textColor=[UIColor grayColor];
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
