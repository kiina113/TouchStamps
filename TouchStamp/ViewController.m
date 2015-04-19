//
//  ViewController.m
//  TouchStamp
//
//  Created by KINARI NISHIYAMA on 2015/04/17.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //選択している画像の番号を0にする
    imageNumber = 0;
    
    //配列に４枚の画像の名前を入れる
    ImageNamed[0]=@"hana.png";
    ImageNamed[1]=@"ハート,png";
    ImageNamed[2]=@"usagi.png";
    ImageNamed[3]=@"犬.png";
    
    //背景画像を設定する
    Image = [UIImage imageNamed:@"幾何学.png"];    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
