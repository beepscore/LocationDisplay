//
//  LocationDisplayViewController.h
//  LocationDisplay
//
//  Created by Steve Baker on 1/28/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

// Note we only write to the textFields, not edit, respond to keyboard input or read from them.
// So we don't need to conform to or implememnt <UITextFieldDelegate> protocol
// Ref Dudney sec 4.6 pg 65-66
@interface LocationDisplayViewController : UIViewController <CLLocationManagerDelegate>{
    CLLocationManager *locationManager;
    UITextField *latitudeTextField;
    UITextField *longitudeTextField;

}
#pragma mark -
#pragma mark properties

@property(nonatomic,retain)CLLocationManager *locationManager;
@property(nonatomic,retain)IBOutlet UITextField *latitudeTextField;
@property(nonatomic,retain)IBOutlet UITextField *longitudeTextField;

@end

