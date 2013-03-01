//
//  TSAppDelegate.h
//  tab_sample
//
//  Created by simsun on 13-3-1.
//  Copyright (c) 2013年 edu.nwpu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TSAppDelegate : UIResponder <UIApplicationDelegate, UITabBarControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;

@end
