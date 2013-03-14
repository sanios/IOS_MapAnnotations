//
//  CustomAnnotationView.h
//  Annotation
//
//  Created by San on 3/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import "CustomAnotation.h"


@interface CustomAnnotationView : MKAnnotationView 
{
	CustomAnotation* myAnnotation;
	CGRect actualRect;
	UIView *view;
}
@property (nonatomic, retain) UIImageView *imageView;
- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier;
@end
