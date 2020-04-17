//
//  CustomTextField.m
//  YHCeLue
//
//  Created by 元和 on 2019/10/15.
//  Copyright © 2019年 元和. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

@synthesize inputValidator = inputValidator_;
- (BOOL)validate{
    NSError *error = nil;
    BOOL validationResult = [inputValidator_ validateInput:self error:&error];
    if (!validationResult) {
        NSLog(@"验证失败：%@",error.localizedDescription);
        NSLog(@"失败结果: %@",error.localizedFailureReason);
    }
    return validationResult;
}
@end
