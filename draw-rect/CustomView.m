//
//  CustomView.m
//  draw-rect
//
//  Created by Фёдор Морев on 7/5/19.
//  Copyright © 2019 Фёдор Морев. All rights reserved.
//

#import "CustomView.h"

@implementation CustomView

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [UIColor blackColor].CGColor);
    CGContextFillRect(context, rect);
    
    CGRect square1 = CGRectMake(150, 150, 100, 100);
    
    CGContextAddRect(context, square1);
    
    CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextFillPath(context);
    
    CGContextMoveToPoint(context, CGRectGetMaxX(square1), CGRectGetMaxY(square1));
    CGContextAddLineToPoint(context, CGRectGetMaxX(square1) + 100, CGRectGetMaxY(square1) + 100);
    
    CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextStrokePath(context);
    
    CGContextMoveToPoint(context, CGRectGetMinX(square1), CGRectGetMinX(square1));
    CGContextAddLineToPoint(context, CGRectGetMinX(square1) - 100, CGRectGetMinY(square1) - 100);
    
    CGContextSetLineWidth(context, 3.f);
    CGContextSetLineCap(context, kCGLineCapRound);
    
    CGContextSetStrokeColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextStrokePath(context);
    
//    CGContextAddArcToPoint(context, CGRectGetMinX(square1) - 100, CGRectGetMinY(square1) - 100, CGRectGetMaxX(square1) + 100, CGRectGetMaxY(square1) + 100, M_PI);
//    CGContextAddQuadCurveToPoint(context, CGRectGetMinX(square1) - 100, CGRectGetMinY(square1) - 100, CGRectGetMaxX(square1) + 100, CGRectGetMaxY(square1) + 100);
    CGContextAddArc(context, 50, 50, 100, M_PI, 0, YES);
    CGContextStrokePath(context);
}

@end
