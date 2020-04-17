//
//  PenguinTypeTwo.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "PenguinTypeTwo.h"
#import "PlayGameStrategy.h"
#import "EatFishStrategy.h"

@implementation PenguinTypeTwo

- (instancetype)init{
    if ([super init]) {
        self.playProtocol = [PlayGameStrategy new];
        self.eatProtocol = [EatFishStrategy new];
    }
    return self;
}

@end
