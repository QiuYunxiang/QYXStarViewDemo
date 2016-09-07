//
//  QYXStarView.h
//  QYXStarViewDemo
//
//  Created by 邱云翔 on 16/9/7.
//  Copyright © 2016年 邱云翔. All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 *  一整条view（以5个为例），思路大致是亮的星星放在了上层，不亮的星星放在了下层，每一个亮的星星和不亮的星星中间有个view，通过改变这个view的宽度（设置好masksToBounds = YES）改变星星的状态
    可以重用，适合显示在列表页
 */

@interface QYXStarView : UIView

/**
 *  装实心星星数组
 */
@property (nonatomic,strong) NSMutableArray <UIImageView *>*starsArray;

/**
 *  初始化方法
 *
 *  @param frame    frame
 *  @param size     单个星星size
 *  @param interval 间隔(注意这个间隔是前一个星星的最左边到下一个星星的最左边，不是前一个星星的最右边到下一个星星的最左边)
 *
 *  @return self
 */
- (instancetype)initWithFrame:(CGRect)frame size:(CGSize)size interval:(CGFloat)interval;

/**
 *  星星赋值
 *
 *  @param grades 分数
 */
- (void)setUpViewsWithGrades:(CGFloat)grades;

@end
