//
//  LocationDisplayAppDelegate.h
//  LocationDisplay
//
//  Created by Steve Baker on 1/28/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LocationDisplayViewController;

@interface LocationDisplayAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    LocationDisplayViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet LocationDisplayViewController *viewController;

@end

