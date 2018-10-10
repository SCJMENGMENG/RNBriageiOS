//
//  MyShareBt.m
//  RNBriageiOS
//
//  Created by scj on 2018/9/1.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "MyShareBt.h"

@implementation MyShareBt

- (instancetype)initWithFrame:(CGRect)frame {
  if ((self = [super initWithFrame:frame])) {
    [self setTitle:@"按钮" forState:UIControlStateNormal];
    [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.backgroundColor = [UIColor cyanColor];//外部决定颜色
    [self addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
  }
  return self;
}

- (void)click {
  
  //调用代理方法
  [self.ClickDelagate ButtonClicked];
  
  UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"123"
                        
                                                 message:@"aaa"
                        
                                                delegate:self
                        
                                       cancelButtonTitle:@"取消"
                        
                                       otherButtonTitles:@"确定", nil];
  
  [alert show];
}

@end
