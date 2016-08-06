//
//  PYPopViewHelper.h
//  Pods
//
//  Created by yunhe.lin on 16/8/6.
//
//

#import <Foundation/Foundation.h>

/*!
 *  弹出层展示位置
 */
typedef NS_ENUM(NSInteger, PYPopViewHelperFadeMode) {
    /*!
     *  上方
     */
    PYPopViewHelperFadeModeTop,
    /*!
     *  居中
     */
    PYPopViewHelperFadeModeCenter,
    /*!
     *  下方
     */
    PYPopViewHelperFadeModeBottom
};

@interface PYPopViewHelper : NSObject

+ (void)dismissPopWindow;

+ (void)showPopWindow:(UIView *)showView fadeMode:(PYPopViewHelperFadeMode)mode;

@end
