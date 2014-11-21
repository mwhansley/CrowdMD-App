//
//  UIStoryboardSegue+DismissSegue_m.m
//  CrowdMD
//
//  Created by Chris Sackes on 11/21/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "UIStoryboardSegue+DismissSegue_m.h"
#import "DismissSegue.h"

@implementation DismissSegue

- (void)perform {
    UIViewController *sourceViewController = self.sourceViewController;
    [sourceViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end