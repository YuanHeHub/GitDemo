//
//  YouLiFinancyStrategy.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "YouLiFinancyStrategy.h"

@implementation YouLiFinancyStrategy

- (NSInteger)financyWithMonth:(NSInteger)month money:(NSInteger)money{
    //    短期理财：6个月以内，年化收益：3%
    //    ​​​中期理财：12个月以内，年化收益：4%
    //    ​​​长期理财：24个月以内，年化收益：4.5%
    
    if (month <= 6) {
        return money * 0.03f / 12 * month + money;
    } else if (month <= 12) {
        return money * 0.04f / 12 * month + money;
    } else if (month <= 24) {
        return money * 0.045f / 12 * month + money;
    }
    
    return 0;
}
@end
