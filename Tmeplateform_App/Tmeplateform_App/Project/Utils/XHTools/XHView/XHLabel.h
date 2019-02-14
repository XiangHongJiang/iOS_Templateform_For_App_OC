//
//  XHLabel.h
//  Tmeplateform_App
//
//  Created by MrYeL on 2019/2/14.
//  Copyright © 2019 MrYeL. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface XHLabel : UILabel

@property (strong,nonatomic) UIColor *strokeColor;
@property (assign,nonatomic) CGFloat strokeWidth;


- (void)setTextShadowWithColor:(UIColor *)shadowColor shadowRadius:(CGFloat)shadowRadius shadowOffset:(CGSize)shadowOffset andShadowOpacity:(CGFloat)opacity;



@end

NS_ASSUME_NONNULL_END
