//
//  InjuryDetailViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Injury.h"

@interface InjuryDetailViewController : UIViewController
@property (nonatomic, strong) Injury* injury;
@end