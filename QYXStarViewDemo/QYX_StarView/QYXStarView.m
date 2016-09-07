//
//  QYXStarView.m
//  QYXStarViewDemo
//
//  Created by 邱云翔 on 16/9/7.
//  Copyright © 2016年 邱云翔. All rights reserved.
//

#import "QYXStarView.h"

@interface QYXStarView ()
/**
 *  遮挡view数组
 */
@property (nonatomic,strong) NSMutableArray <UIView *>*tempViewArray;
/**
 *  遮挡view 原始frame数组
 */
@property (nonatomic,strong) NSMutableArray <NSValue *>*frameArray;
@end

@implementation QYXStarView

#pragma mark 初始化
- (instancetype)initWithFrame:(CGRect)frame size:(CGSize)size interval:(CGFloat)interval {
    self = [super initWithFrame:frame];
    if (self) {
        [self setUpViewsWithSize:size interval:interval];
    }
    return self;
}

#pragma mark 布局
- (void)setUpViewsWithSize:(CGSize)size interval:(CGFloat)interval {
    
    // 这里以5颗星星为例子
    
    self.tempViewArray = [NSMutableArray array];
    self.frameArray = [NSMutableArray array];
    self.starsArray = [NSMutableArray array];
    
    CGFloat interval_temp = 0;
    for (int i = 0; i < 5; i++) {
        //
        UIImageView *kongXinView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"空心星星"]];
        kongXinView.frame = CGRectMake(interval_temp, 0, size.width, size.height);
        [self addSubview:kongXinView];
        
        //
        UIImageView *shiXinView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"实心星星"]];
        shiXinView.frame = kongXinView.bounds;
        
        //
        UIView *temp = [[UIView alloc] initWithFrame:kongXinView.frame];
        NSValue *frameValue = [NSValue valueWithCGRect:temp.frame];
        [self.frameArray addObject:frameValue];
        temp.layer.masksToBounds = YES;
        [temp addSubview:shiXinView];
        
        [self addSubview:temp];
        [self.tempViewArray addObject:temp];
        [self.starsArray addObject:shiXinView];
        interval_temp += interval;
    }
}

#pragma 赋值
- (void)setUpViewsWithGrades:(CGFloat)grades {
    
    //分数为0-5分
    
    int gradesInt = (int)grades;
    CGFloat gradesFloaat = grades - gradesInt;
    for (int i = 0; i < 5; i++) {
        if (i <= gradesInt) {
            _tempViewArray[i].hidden = NO;
        } else {
            _tempViewArray[i].hidden = YES;
        }
    }
    
    if (gradesInt != 5) {
        UIView *temp = _tempViewArray[gradesInt];
        CGRect frame = [_frameArray[gradesInt] CGRectValue];
        temp.frame = CGRectMake(frame.origin.x, frame.origin.y, frame.size.width * gradesFloaat, frame.size.height);
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
