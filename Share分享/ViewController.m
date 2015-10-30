//
//  ViewController.m
//  Share分享
//
//  Created by ios－04 on 15/10/30.
//  Copyright © 2015年 wwz. All rights reserved.
//

#import "ViewController.h"
#import "UMSocial.h"
#define AppKey @"5632e69ae0f55a6a5200000c"
@interface ViewController ()<UMSocialUIDelegate>

@end
//微信应用
//APPId: wx945b58aef3a271f0
//APPSecret : 0ae78dd42761fd9681b04833c79a857b
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)beginShare:(id)sender {
    
    [UMSocialSnsService presentSnsController:self appKey:AppKey shareText:@"ico" shareImage:[UIImage imageNamed:@"UMS_line_icon"] shareToSnsNames:[NSArray arrayWithObjects:UMShareToSina,UMShareToQQ,UMShareToEmail,UMShareToInstagram,UMShareToLine, nil] delegate:self];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
