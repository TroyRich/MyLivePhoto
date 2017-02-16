//
//  WYXLibraryViewController.m
//  MyLivePhoto
//
//  Created by Troy-Wu on 15/02/2017.
//  Copyright © 2017 com.LittleTroy. All rights reserved.
//

#import "WYXLibraryViewController.h"

@interface WYXLibraryViewController ()

@end

@implementation WYXLibraryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //先检查用户本地的库中有没有自己已经做好的视频，如果有就显示在界面上，如果没有就显示一个添加按钮
    NSArray *path = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, NO);
    
//    if(self.library.count){
//        
//    }else{
//        
//    }
    
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(0, 0, 100, 100);
    label.textColor = [UIColor redColor];
    label.text = @"hahhahahhahah";
    [[self view] addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
