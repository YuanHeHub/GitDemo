//
//  FinancyContext.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "FinancyContext.h"

@implementation FinancyContext

- (instancetype)initWithFinancy:(id<FinancyStrategyProtocal>)financy{
    if ([super init]) {
        _financy = financy;
    }
    return self;
}

- (NSInteger)financyWithMonth:(NSInteger)month money:(NSInteger)money{
    return [_financy financyWithMonth:month money:money];
}
@end
