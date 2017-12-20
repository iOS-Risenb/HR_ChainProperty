//
//  NSString+HR_ChainProperty.m
//  HR_ChainProperty
//
//  Created by Obgniyum on 2017/12/20.
//

#import "NSString+HR_ChainProperty.h"

@implementation NSString (HR_ChainProperty)

- (NSString *(^)(void))HR_UTF8 {
    return ^(void){
        return [NSString stringWithCString:[self UTF8String] encoding:NSUTF8StringEncoding];
    };
}

@end
