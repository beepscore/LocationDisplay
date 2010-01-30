//
//  LocationDisplayViewController.h
//  LocationDisplay
//
//  Created by Steve Baker on 1/28/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@interface LocationDisplayViewController : UIViewController <CLLocationManagerDelegate>{
    CLLocationManager *locationManager;
}
#pragma mark -
#pragma mark properties

@property(nonatomic,retain)CLLocationManager *locationManager;

@end

