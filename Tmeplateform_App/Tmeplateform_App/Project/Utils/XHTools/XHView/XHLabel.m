//
//  XHLabel.m
//  Tmeplateform_App
//
//  Created by MrYeL on 2019/2/14.
//  Copyright © 2019 MrYeL. All rights reserved.
//

#import "XHLabel.h"

@implementation XHLabel

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        self.strokeColor = [UIColor blackColor];
        self.strokeWidth = 1;
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.strokeColor = [UIColor blackColor];
        self.strokeWidth = 1;
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        
        self.strokeColor = [UIColor blackColor];
        self.strokeWidth = 1;
    }
    return self;
}


- (void)drawTextInRect:(CGRect)rect
{
    if (self.strokeWidth > 0) {
        CGSize shadowOffset = self.shadowOffset;
        UIColor *textColor = self.textColor;
        
        CGContextRef c = UIGraphicsGetCurrentContext();
        CGContextSetLineWidth(c, self.strokeWidth);
        CGContextSetLineJoin(c, kCGLineJoinRound);
        //画外边
        CGContextSetTextDrawingMode(c, kCGTextStroke);
        self.textColor = self.strokeColor;
        [super drawTextInRect:rect];
        //画内文字
        CGContextSetTextDrawingMode(c, kCGTextFill);
        self.textColor = textColor;
        self.shadowOffset = CGSizeMake(0, 0);
        [super drawTextInRect:rect];
        self.shadowOffset = shadowOffset;
    } else {
        [super drawTextInRect:rect];
    }
}
- (void)setTextShadowWithColor:(UIColor *)shadowColor shadowRadius:(CGFloat)shadowRadius shadowOffset:(CGSize)shadowOffset andShadowOpacity:(CGFloat)opacity {
    
    self.layer.shadowColor = shadowColor.CGColor;
    self.layer.shadowRadius = shadowRadius;
    self.layer.shadowOffset = shadowOffset;
    self.layer.opacity = opacity;
}

@end
