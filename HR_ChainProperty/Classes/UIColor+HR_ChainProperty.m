//
//  UIColor+HR_ChainProperty.m
//  HR_ChainProperty
//
//  Created by Obgniyum on 2017/12/21.
//

#import "UIColor+HR_ChainProperty.h"

@implementation UIColor (HR_ChainProperty)

+ (UIColor *(^)(NSUInteger))HR_Hex {
    return ^(NSUInteger hexValue) {
        return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 green:((float)((hexValue & 0xFF00) >> 8))/255.0 blue:((float)(hexValue & 0xFF))/255.0 alpha:1.0];
    };
}

+ (UIColor *(^)(NSString *))HR_HexString {
    return ^(NSString *hexString) {
        if ([hexString hasPrefix:@"#"]) {
            hexString = [hexString substringFromIndex:1];
        }
        if ([hexString hasPrefix:@"0x"]) {
            hexString = [hexString substringFromIndex:2];
        }
        if ([hexString hasPrefix:@"0X"]) {
            hexString = [hexString substringFromIndex:2];
        }
        NSUInteger r = strtoul([[hexString substringWithRange:NSMakeRange(0, 2)] UTF8String], 0, 16);
        NSUInteger g = strtoul([[hexString substringWithRange:NSMakeRange(2, 2)] UTF8String], 0, 16);
        NSUInteger b = strtoul([[hexString substringWithRange:NSMakeRange(4, 2)] UTF8String], 0, 16);
        return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b /255.0 alpha:1.0];
    };
}

+ (UIColor *(^)(float, float, float))HR_RGB {
    return ^(float r, float g, float b) {
        return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b /255.0 alpha:1.0];
    };
}

@end
