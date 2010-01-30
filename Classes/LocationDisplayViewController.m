//
//  LocationDisplayViewController.m
//  LocationDisplay
//
//  Created by Steve Baker on 1/28/10.
//  Copyright Beepscore LLC 2010. All rights reserved.
//

#import "LocationDisplayViewController.h"

@implementation LocationDisplayViewController
#pragma mark -
#pragma mark properties

@synthesize locationManager;
@synthesize latitudeTextField;
@synthesize longitudeTextField;

#pragma mark -
#pragma mark initializers
/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    self.locationManager = [[[CLLocationManager alloc] init] autorelease];
    self.locationManager.delegate = self;
    [self.locationManager startUpdatingLocation];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


#pragma mark destructors and memory cleanUp
// use cleanUp method to avoid repeating code in setView, viewDidUnload, and dealloc
- (void)cleanUp {
    [locationManager release], locationManager = nil;
    [latitudeTextField release], latitudeTextField = nil;
    [longitudeTextField release], longitudeTextField = nil;    
}


// Release IBOutlets in setView.  
// Ref http://developer.apple.com/iPhone/library/documentation/Cocoa/Conceptual/MemoryMgmt/Articles/mmNibObjects.html
//
// http://moodle.extn.washington.edu/mod/forum/discuss.php?d=3162
- (void)setView:(UIView *)aView {
    
    if (!aView) { // view is being set to nil        
        // set outlets to nil, e.g. 
        // self.anOutlet = nil;
        [self cleanUp];
    }    
    // Invoke super's implementation last    
    [super setView:aView];    
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	[self cleanUp];
}



- (void)dealloc {
    [self cleanUp];
    [super dealloc];
}

#pragma mark Location methods
- (void)locationManager:(CLLocationManager *)manager
didUpdateToLocation:(CLLocation *)newLocation
fromLocation:(CLLocation *)oldLocation {
    latitudeTextField.text = [NSString stringWithFormat:@"%3.5f",
                          newLocation.coordinate.latitude];
    longitudeTextField.text = [NSString stringWithFormat:@"%3.5f",
                          newLocation.coordinate.longitude];
}


@end
