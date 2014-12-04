//
//  PainDescriptionViewController.h
//  CrowdMD
//
//  Created by Megan Hansley on 12/4/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PainDescriptionViewController : UIViewController
@property NSMutableArray *injuries;
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end
