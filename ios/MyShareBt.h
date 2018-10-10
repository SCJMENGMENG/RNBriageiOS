//
//  MyShareBt.h
//  RNBriageiOS
//
//  Created by scj on 2018/9/1.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <React/RCTComponent.h>

@protocol ShareButtonClickedDelegate <NSObject>
@optional
//代理方法
- (void)ButtonClicked;
@end

@interface MyShareBt : UIButton

/** button点击事件*/
@property (nonatomic, copy) RCTBubblingEventBlock onButtonClicked;

@property (nonatomic, strong) id <ShareButtonClickedDelegate> ClickDelagate;

@end
