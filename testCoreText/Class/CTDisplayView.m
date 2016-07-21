//
//  CTDisplayView.m
//  testCoreText
//
//  Created by 王迎博 on 16/7/20.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "CTDisplayView.h"
#import <CoreText/CoreText.h>


@implementation CTDisplayView


- (void)drawRect:(CGRect)rect
{
    [super drawRect:rect];
    
    //test1
    [self test1];
    
}


- (void)test1 {
    //步骤1-得到当前绘制画布的上下文，用于后续将内容绘制在画布上
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    //步骤2-将坐标系上下翻转。对于底层的绘制引擎来说，屏幕的左下角是（0，0）坐标。而对于上层UIKit来说，左上角才是。所以我们为了之后的坐标系描述按UIKit来做，先在这里做一个坐标系的上下翻转操作。翻转以后，底层和上层的（0，0）坐标就是重合的了
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    //步骤3-创建绘制区域，CoreText支持各种文字排版的区域
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, self.bounds);
    //步骤4
    NSAttributedString *attString = [[NSAttributedString alloc]initWithString:@"Hello World"];
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, [attString length]), path, NULL);
    //步骤5
    CTFrameDraw(frame, context);
    //步骤6
    CFRelease(frame);
    CFRelease(path);
    CFRelease(framesetter);

}

@end
