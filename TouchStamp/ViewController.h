//
//  ViewController.h
//  TouchStamp
//
//  Created by KINARI NISHIYAMA on 2015/04/17.
//  Copyright (c) 2015年 KINARI NISHIYAMA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    //４枚の画像の名前を入れる配列
    NSString *ImageNamed[4];
    //選択している画像の番号
    int imageNumber;
    //背景画像のインスタンス
    __weak IBOutlet UIImageView *haikei;
    
    }

- (IBAction)hanaBt;
- (IBAction)heartBt;
- (IBAction)dogBt;
- (IBAction)rabbitBt;



@end

