//
//  AnnotationViewController.h
//  Annotation
//
//  Created by San on 3/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomAnotation.h"
#import <UIKit/UIKit.h>
#import <MapKit/MKMapView.h>
#import <MapKit/MKAnnotation.h>
#import <MapKit/MKPinAnnotationView.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "CustomAnnotationView.h"

@interface AnnotationViewController : UIViewController {
	MKMapView *mapView;
}

@end

