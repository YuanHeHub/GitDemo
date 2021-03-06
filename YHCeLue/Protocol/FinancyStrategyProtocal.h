//
//  FinancyStrategyProtocal.h
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FinancyStrategyProtocal <NSObject>

- (NSInteger)financyWithMonth:(NSInteger)month money:(NSInteger)money;

@end

NS_ASSUME_NONNULL_END
