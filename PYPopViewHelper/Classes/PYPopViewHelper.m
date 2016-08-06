//
//  PYPopViewHelper.m
//  Pods
//
//  Created by yunhe.lin on 16/8/6.
//
//

#import "PYPopViewHelper.h"

static PYPopViewHelper *windowHelper = nil;
static UIWindow *popWindow = nil;

#define kWindowWidth [UIScreen mainScreen].bounds.size.width
#define kWindowHeight [UIScreen mainScreen].bounds.size.height

@interface PYPopViewHelper()

@end

@implementation PYPopViewHelper


#pragma mark - static method 

+ (void)showPopWindow:(UIView *)showView fadeMode:(PYPopViewHelperFadeMode)mode
{
    
    [self configPopWindow];
    [self removeAllSubViews];
    [popWindow makeKeyWindow];
    popWindow.hidden = NO;
    CGRect showFrame = showView.frame;
    CGFloat orignX = (kWindowWidth - CGRectGetWidth(showView.frame)) / 2.0;
    CGFloat orignY = 0;
    switch (mode) {
        case PYPopViewHelperFadeModeTop:
            orignY = 0;
            break;
        case PYPopViewHelperFadeModeBottom:
            orignY = kWindowHeight - CGRectGetHeight(showView.frame);
            break;
        case PYPopViewHelperFadeModeCenter:
            orignY = (kWindowHeight - CGRectGetHeight(showView.frame))/2.0;
            break;
        default:
            break;
    }
    [showView setFrame:CGRectMake(orignX, orignY, CGRectGetWidth(showView.frame), CGRectGetHeight(showView.frame))];
    [popWindow addSubview:showView];
    
}

+ (void)dismissPopWindow
{
    [popWindow resignFirstResponder];
    popWindow.hidden = YES;
}

+ (void)removeAllSubViews
{
    [popWindow.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeFromSuperview];
    }];
}

+ (void)configPopWindow
{
    if (popWindow) return;
    popWindow = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    popWindow.backgroundColor = [UIColor colorWithWhite:0 alpha:0.5];
}

@end
