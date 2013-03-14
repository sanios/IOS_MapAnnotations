//
//  CustomAnnotationView.m
//  BMO Market Place
//
//  Created by San on 2/18/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomAnnotationView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CustomAnnotationView

@synthesize imageView;

#define kHeight 55
#define kWidth  48
#define kBorder 2

#define CALLOUT_TAG 1
- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier
{
	myAnnotation = [(CustomAnotation*)annotation retain];
	self = [super initWithAnnotation:myAnnotation reuseIdentifier:reuseIdentifier];
	self.frame = CGRectMake(0, 0, kWidth, kHeight);

	self.backgroundColor = [UIColor blackColor];
	return self;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
	if(selected){
		NSLog(@"Selected");
		actualRect = self.frame;
		if (!view){
			view = [[UIView alloc]initWithFrame:CGRectMake(6, 0, 150, 90)];
			view.backgroundColor = [UIColor yellowColor];
			view.layer.borderColor = [UIColor redColor].CGColor;
			view.layer.borderWidth = 2;
			
			UIButton *but = [UIButton buttonWithType:UIButtonTypeRoundedRect];
			[but addTarget:self action:@selector(accessoryTapped) forControlEvents:UIControlEventTouchDown];
			[view addSubview:but];
			but.frame = CGRectMake(0, 0, 50, 30);
			[but setTitle:@"Click" forState:UIControlStateNormal];
		}
		self.frame = CGRectMake(self.frame.origin.x - view.frame.size.width/2 + self.frame.size.width/2, self.frame.origin.y+10 - view.frame.size.height, view.frame.size.width, view.frame.size.height + kHeight);
		[self addSubview:view];

	}
	else {
		NSLog(@"Not Selected");
		self.frame = actualRect;
		NSLog(@"actual Frame : %@", NSStringFromCGRect(self.frame));
		[view removeFromSuperview];
    }
	
}

-(void)accessoryTapped
{
	NSLog(@"button tapped");
}


-(void)dealloc {
	
	[super dealloc];
}
@end
