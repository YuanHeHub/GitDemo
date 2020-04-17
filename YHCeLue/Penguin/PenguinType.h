//
//  PenguinType.h
//  YHCeLue
//
//  Created by 元和 on 2020/4/15.
//  Copyright © 2020年 元和. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PenguinPlayProtocol.h"
#import "PenguinEatProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface PenguinType : NSObject

@property (nonatomic,strong)id<PenguinPlayProtocol> playProtocol;
@property (nonatomic,strong)id<PenguinEatProtocol> eatProtocol;

- (void)penguinPlayAndEat;

@end

NS_ASSUME_NONNULL_END
