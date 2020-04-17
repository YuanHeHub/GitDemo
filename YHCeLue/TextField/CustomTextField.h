//
//  CustomTextField.h
//  YHCeLue
//
//  Created by 元和 on 2019/10/15.
//  Copyright © 2019年 元和. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"
NS_ASSUME_NONNULL_BEGIN

@interface CustomTextField : UITextField
{
    @private
    InputValidator *inputValidator_;
}
@property (nonatomic,retain)IBOutlet InputValidator *inputValidator;

- (BOOL)validate;
@end

NS_ASSUME_NONNULL_END
