//
//  NumberInputValidator.m
//  YHCeLue
//
//  Created by 元和 on 2019/10/15.
//  Copyright © 2019年 元和. All rights reserved.
//

#import "NumberInputValidator.h"

@implementation NumberInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing  _Nullable *)error{
    
    NSString *checkedNumString = input.text;
    checkedNumString = [checkedNumString stringByTrimmingCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]];
    
    if (checkedNumString.length > 0) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"输入框验证失败", @"");
            NSString *reason = NSLocalizedString(@"输入框只能包含数字", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObject:objArray forKey:keyArray];
            *error = [NSError errorWithDomain:NSCocoaErrorDomain code:1001 userInfo:userInfo];
        }
        return NO;
    }
    NSLog(@"%@ 内容全部为数字",input.text);
    return YES;
}
@end
