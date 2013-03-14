//
//  AnnotationAppDelegate.h
//  Annotation
//
//  Created by San on 3/14/13.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AnnotationViewController;

@interface AnnotationAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AnnotationViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AnnotationViewController *viewController;

@end

