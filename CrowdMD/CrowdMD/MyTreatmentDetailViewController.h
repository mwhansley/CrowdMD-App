//
//  MyTreatmentDetailViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTreatment.h"
#import "StarRatingControl.h"

@interface MyTreatmentDetailViewController : UIViewController
@property (nonatomic,strong) MyTreatment* myTreatment;
@property (weak) IBOutlet StarRatingControl *starRatingControl;
@property (weak) IBOutlet UILabel *ratingLabel;

@end
