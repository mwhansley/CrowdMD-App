//
//  FAKEMyTreatmentViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/21/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StarRatingControl.h"

@interface FAKEMyTreatmentViewController : UIViewController
@property (weak) IBOutlet UILabel *ratingLabel;
@property (weak) IBOutlet StarRatingControl *starRatingControl;
@end
