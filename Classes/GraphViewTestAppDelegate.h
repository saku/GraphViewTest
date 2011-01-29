//
//  GraphViewTestAppDelegate.h
//  GraphViewTest
//
//  Created by shuichi on 11/01/30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GraphViewTestViewController;

@interface GraphViewTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    GraphViewTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet GraphViewTestViewController *viewController;

@end

