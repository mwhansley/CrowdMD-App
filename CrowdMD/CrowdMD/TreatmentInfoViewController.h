//
//  TreatmentInfoViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/25/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Treatment.h"
#import "StarRatingControl.h"

@interface TreatmentInfoViewController : UIViewController
@property (nonatomic,strong) Treatment* treatment;
@property (weak) IBOutlet StarRatingControl *starRatingControl;
@property (weak) IBOutlet UILabel *ratingLabel;
@end
