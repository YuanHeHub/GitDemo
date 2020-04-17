//
//  FinancyController.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "FinancyController.h"
#import "FinancyStrategyProtocal.h"
#import "AlipayFinancyStrategy.h"
#import "YouLiFinancyStrategy.h"
#import "FinancyContext.h"
@interface FinancyController ()

@end

@implementation FinancyController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    id<FinancyStrategyProtocal> alipayFinancy = [[AlipayFinancyStrategy alloc] init];
    FinancyContext *context = [[FinancyContext alloc] initWithFinancy:alipayFinancy];
    [context financyWithMonth:6 money:10000];

    id<FinancyStrategyProtocal> ylFinancy = [[YouLiFinancyStrategy alloc] init];
    context.financy = ylFinancy;
    [context financyWithMonth:6 money:10000];
}

@end
