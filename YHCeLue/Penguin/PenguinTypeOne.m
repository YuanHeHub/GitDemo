//
//  PenguinTypeOne.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "PenguinTypeOne.h"
#import "PlayFootballStrategy.h"
#import "EatFishStrategy.h"

@implementation PenguinTypeOne

- (instancetype)init{
    if ([super init]) {
        self.playProtocol = [PlayFootballStrategy new];
        self.eatProtocol = [EatFishStrategy new];
    }
    return self;
}
@end
