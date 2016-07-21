//
//  CTFrameParserConfig.m
//  testCoreText
//
//  Created by 王迎博 on 16/7/21.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "CTFrameParserConfig.h"

@implementation CTFrameParserConfig


- (id)init {
    self = [super init];
    if (self) {
        
        _width = 200.f;
        _fontSize = 16.0f;
        _lineSpace = 8.f;
        _textColor = YBColor(108, 108, 108);
    }
    return self;
}

@end
