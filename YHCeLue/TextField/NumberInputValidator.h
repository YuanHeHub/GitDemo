//
//  NumberInputValidator.h
//  YHCeLue
//
//  Created by 元和 on 2019/10/15.
//  Copyright © 2019年 元和. All rights reserved.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface NumberInputValidator : InputValidator

/**
 保证只输入包含数字的验证方法
 */
- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error;
@end

NS_ASSUME_NONNULL_END
