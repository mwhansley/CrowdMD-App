//
//  TreatmentViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/25/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "StarRatingControl.h"
#import "Injury.h"

@interface TreatmentViewController : UIViewController
@property (nonatomic,strong) Injury* injury;
@property (nonatomic) IBOutlet UIView* vcview;
@end
