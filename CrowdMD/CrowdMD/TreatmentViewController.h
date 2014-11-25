//
//  TreatmentViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/25/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StarRatingControl.h"

@interface TreatmentViewController : UIViewController
@property (weak) IBOutlet UILabel *ratingLabel;
@property (weak) IBOutlet StarRatingControl *starRatingControl;
@end
