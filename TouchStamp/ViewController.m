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

//スタンプが選択された時
- (IBAction)hanaBt{
    imageNumber = 1;
}

- (IBAction)heartBt{
    imageNumber = 2;
}

- (IBAction)dogBt{
    imageNumber = 3;
}
- (IBAction)rabbitBt{
    imageNumber = 4;
}

- (IBAction)gazou{
    UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
    [ipc setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [ipc setAllowsEditing:YES];
    [self presentViewController:ipc animated:YES completion:nil];
}

-(void)imagePickerController:(UIImagePickerController *)picker
didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    [haikei setImage:image];
    [self dismissViewControllerAnimated:YES completion:nil];
}

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
    UIImage *Image = [UIImage imageNamed:@"幾何学.png"];
    [haikei setImage:Image];
    
    
}
//タッチされた時の処理
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    //タッチされた時の場所を取得
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInView:self.view];
    
    //どの画像が選択されたのか
    if (imageNumber == 1) {
        UIImage *image = [UIImage imageNamed:@"hana.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
        imgView.center = CGPointMake(location.x, location.y);
        CGRect rect = CGRectMake(location.x,location.y , 54, 63);
        imgView.frame = rect;
        [self.view addSubview:imgView];
        
                }
    
    if (imageNumber == 2) {
        UIImage *image = [UIImage imageNamed:@"ハート.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
        imgView.center = CGPointMake(location.x, location.y);
        CGRect rect = CGRectMake(location.x,location.y , 54, 63);
        imgView.frame = rect;
        [self.view addSubview:imgView];
    }

    if (imageNumber == 3) {
        UIImage *image = [UIImage imageNamed:@"犬.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
        imgView.center = CGPointMake(location.x, location.y);
        CGRect rect = CGRectMake(location.x,location.y , 54, 63);
        imgView.frame = rect;
        [self.view addSubview:imgView];
        
    }

    if (imageNumber == 4) {
        UIImage *image = [UIImage imageNamed:@"usagi.png"];
        UIImageView *imgView = [[UIImageView alloc] initWithImage:image];
        imgView.center = CGPointMake(location.x, location.y);
        CGRect rect = CGRectMake(location.x,location.y , 54, 63);
        imgView.frame = rect;
        [self.view addSubview:imgView];
        
    }

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
