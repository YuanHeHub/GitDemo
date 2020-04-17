//
//  PenguinController.m
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import "PenguinController.h"
#import "PenguinPlayProtocol.h"
#import "PenguinEatProtocol.h"
#import "PenguinContext.h"

#import "PlayFootballStrategy.h"
#import "PlayGameStrategy.h"
#import "EatFishStrategy.h"

#import "PenguinTypeOne.h"
#import "PenguinTypeTwo.h"

@interface PenguinController ()

@end

@implementation PenguinController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
        /*
         第一种用法
             自由组合，用哪个传哪个，创建企鹅
         */
        id<PenguinPlayProtocol> football = [PlayFootballStrategy new];
        id<PenguinPlayProtocol> game = [PlayGameStrategy new];
        id<PenguinEatProtocol> eat = [EatFishStrategy new];
    
    // 足球吃鱼的企鹅
    PenguinContext *context = [[PenguinContext alloc] initWithPlay:football eat:eat];
    [context penguinInfo];
    
    // 游戏吃鱼的企鹅
    context.playStrategy = game;
    context.eatStrategy = eat;
    [context penguinInfo];
    
    /**
     第二种用法
         每一种企鹅固定好play和eat,创建一个固定的类
     */
    PenguinType *one = [PenguinTypeOne new];
    [one penguinPlayAndEat];
    
    PenguinType *two = [PenguinTypeTwo new];
    [two penguinPlayAndEat];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
