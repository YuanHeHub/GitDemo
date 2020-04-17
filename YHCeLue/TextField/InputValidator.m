//
//  InputValidator.m
//  YHCeLue
//
//  Created by 元和 on 2019/10/15.
//  Copyright © 2019年 元和. All rights reserved.
//

#import "InputValidator.h"

@implementation InputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError * _Nullable __autoreleasing *)error{
    if (error) {
        *error = nil;
    }
    return NO;
}
@end
