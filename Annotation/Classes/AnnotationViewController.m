//
//  AnnotationViewController.m
//  Annotation
//
//  Created by San on 3/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "AnnotationViewController.h"

@implementation AnnotationViewController



/*
 // The designated initializer. Override to perform setup that is required before the view is loaded.
 - (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
 self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
 if (self) {
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
	mapView =[[MKMapView alloc] initWithFrame:CGRectMake(0, 0, 320, 380)];//[[UIScreen mainScreen] applicationFrame]];
	
	
	mapView.mapType = MKMapTypeStandard;
	mapView.delegate = self;
	[self.view addSubview:mapView];
	
	
	
	CLLocationCoordinate2D center;
	center.longitude = -121.43432; 
	center.latitude = 37.74324;
	
	MKCoordinateSpan span = MKCoordinateSpanMake(0.03, 0.03);
	[mapView setRegion: MKCoordinateRegionMake(center, span) animated:YES];
	
	CustomAnotation *annotation = [[CustomAnotation alloc] initWithCoordinate:center];
	[mapView addAnnotation:annotation];
}

- (void)handleGesture:(UIGestureRecognizer *)gestureRecognizer
{
	NSLog(@"Gesture");
	
}






#pragma mark -
#pragma mark MapView Delegate
- (void)mapView:(MKMapView *)amapView regionDidChangeAnimated:(BOOL)animated
{
	
}
- (CustomAnnotationView *)mapView:(MKMapView *)aMapView viewForAnnotation:(id <MKAnnotation>)annotation
{
	if ([annotation isKindOfClass:[CustomAnotation class]])
	{
		CustomAnnotationView *newAnnotationView = nil;
		// determine the type of annotation, and produce the correct type of annotation view for it.
		CustomAnotation* myAnnotation = (CustomAnotation *)annotation;
		
		newAnnotationView = [[[CustomAnnotationView alloc] initWithAnnotation:myAnnotation reuseIdentifier:nil] autorelease];
		
		[newAnnotationView setEnabled:YES];
		[newAnnotationView setCanShowCallout:NO];
		return newAnnotationView;
	}	
	else {
		MKAnnotationView *annotationView = nil;
		annotationView.canShowCallout = YES;
		annotationView.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
	}
	return nil;
}

- (void)mapView:(MKMapView *)amapView didSelectAnnotationView:(MKAnnotationView *)view
{	
}

- (void)mapView:(MKMapView *)amapView didDeselectAnnotationView:(MKAnnotationView *)view
{
	//NSLog(@"");
}




-(void)mapView:(MKMapView *)amapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control{
	
}

- (MKOverlayView *)mapView:(MKMapView *)mapView viewForOverlay:(id <MKOverlay>)overlay {
	
	
}

/*
 // Override to allow orientations other than the default portrait orientation.
 - (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
 // Return YES for supported orientations
 return (interfaceOrientation == UIInterfaceOrientationPortrait);
 }
 */

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
