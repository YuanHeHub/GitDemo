//
//  FinancyContext.h
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FinancyStrategyProtocal.h"

NS_ASSUME_NONNULL_BEGIN

@interface FinancyContext : NSObject

@property (nonatomic,strong)id<FinancyStrategyProtocal> financy;

- (instancetype)initWithFinancy:(id<FinancyStrategyProtocal>)financy;
- (NSInteger)financyWithMonth:(NSInteger)month money:(NSInteger)money;

@end

NS_ASSUME_NONNULL_END
