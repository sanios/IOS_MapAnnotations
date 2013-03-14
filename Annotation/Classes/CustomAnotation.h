//
//  CustomAnotation.h
//  Annotation
//
//  Created by San on 3/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface CustomAnotation : NSObject <MKAnnotation> 
{
	CLLocationCoordinate2D coordinate;
}
@property (nonatomic) CLLocationCoordinate2D coordinate;
- (id)initWithCoordinate:(CLLocationCoordinate2D)inCoord;
@end