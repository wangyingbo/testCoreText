//
//  CTFrameParserConfig.h
//  testCoreText
//
//  Created by 王迎博 on 16/7/21.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CTFrameParserConfig : NSObject


@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat fontSize;
@property (nonatomic, assign) CGFloat lineSpace;
@property (nonatomic, strong) UIColor *textColor;


@end
