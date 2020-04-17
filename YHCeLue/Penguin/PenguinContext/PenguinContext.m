//
//  PenguinContext.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "PenguinContext.h"

@implementation PenguinContext

- (id)initWithPlay:(id<PenguinPlayProtocol>)play eat:(id<PenguinEatProtocol>)eat{
    if ([super init]) {
        self.playStrategy = play;
        self.eatStrategy = eat;
    }
    return self;
}

- (void)penguinInfo{
    NSLog(@"我是一只企鹅，我爱");
    [_playStrategy play];
    [_eatStrategy eat];
}

@end
