//
//  CTFrameParser.h
//  testCoreText
//
//  Created by 王迎博 on 16/7/21.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CoreTextData.h"
#import "CTFrameParserConfig.h"


@interface CTFrameParser : NSObject


+ (CoreTextData *)parseContent:(NSString *)content config:(CTFrameParserConfig *)config;

@end
