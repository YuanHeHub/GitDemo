//
//  PenguinType.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "PenguinType.h"

@implementation PenguinType

- (void)penguinPlayAndEat{
    [self.playProtocol play];
    [self.eatProtocol eat];
}
@end
