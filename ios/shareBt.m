//
//  shareBt.m
//  RNBriageiOS
//
//  Created by scj on 2018/9/1.
//  Copyright © 2018年 Facebook. All rights reserved.
//
#import <MapKit/MapKit.h>
#import "shareBt.h"
#import <React/RCTViewManager.h>
#import "MyShareBt.h"

@interface shareBt : RCTViewManager<ShareButtonClickedDelegate>
@property (nonatomic) MyShareBt *bt;
@end

@implementation shareBt

RCT_EXPORT_MODULE()

RCT_EXPORT_VIEW_PROPERTY(onButtonClicked, RCTBubblingEventBlock)

- (UIView *)view
{
  _bt = [[MyShareBt alloc] initWithFrame:CGRectMake(0, 0, 300, 100)];
  
  _bt.ClickDelagate = self;
  return _bt;
}

#pragma mark ShareButtonClickedDelegate
- (void)ButtonClicked {
  NSInteger x = arc4random() % 100;
  NSLog(@"原生事件%ld",x);
  // 将onButtonClicked事件导出
  _bt.onButtonClicked(@{@"randomValue": [NSNumber numberWithInteger:x]});
}

@end
