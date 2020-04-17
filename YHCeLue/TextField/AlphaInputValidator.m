//
//  AlphaInputValidator.m
//  YHCeLue
//
//  Created by 元和 on 2019/10/15.
//  Copyright © 2019年 元和. All rights reserved.
//

#import "AlphaInputValidator.h"

@implementation AlphaInputValidator

- (BOOL)validateInput:(UITextField *)input error:(NSError *__autoreleasing  _Nullable *)error{
    
    NSString *inputString = input.text;
    if (inputString.length == 0) return NO;
    NSString *regex =@"[a-zA-Z]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    BOOL resultBool = [pred evaluateWithObject:inputString];
    
    if (!resultBool) {
        if (error != nil) {
            NSString *description = NSLocalizedString(@"输入框验证失败", @"");
            NSString *reason = NSLocalizedString(@"输入框只能包含字母", @"");
            NSArray *objArray = [NSArray arrayWithObjects:description, reason, nil];
            NSArray *keyArray = [NSArray arrayWithObjects:NSLocalizedDescriptionKey, NSLocalizedFailureReasonErrorKey, nil];
            NSDictionary *userInfo = [NSDictionary dictionaryWithObject:objArray forKey:keyArray];
            *error = [NSError errorWithDomain:NSCocoaErrorDomain code:1002 userInfo:userInfo];
        }
        return NO;
    }
    NSLog(@"%@ 内容全部为字母",inputString);
    return YES;
}

@end
