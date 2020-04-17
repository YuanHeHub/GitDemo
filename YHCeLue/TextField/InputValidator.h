//
//  InputValidator.h
//  YHCeLue
//
//  Created by 元和 on 2019/10/15.
//  Copyright © 2019年 元和. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface InputValidator : NSObject

/**
 实际验证策略的存根方法
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
