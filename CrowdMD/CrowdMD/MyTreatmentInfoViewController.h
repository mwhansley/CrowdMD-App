//
//  MyTreatmentInfoViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/21/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTreatment.h"

@interface MyTreatmentInfoViewController : UIViewController
@property (nonatomic,strong) MyTreatment* myTreatment;
@property (nonatomic) NSInteger treatmentIndex;
@end
