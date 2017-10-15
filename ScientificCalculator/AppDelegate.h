//
//  AppDelegate.h
//  ScientificCalculator
//
//  Created by Sindhu Vempati on 15/12/14.
//  Copyright (c) 2014 Sindhu Vempati. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CalViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) CalViewController *operCalc;

@end
