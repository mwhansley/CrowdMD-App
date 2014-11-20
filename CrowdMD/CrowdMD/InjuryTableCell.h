//
//  InjuryTableCell.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/13/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Injury.h"

@interface InjuryTableCell : UITableViewCell
@property (nonatomic,strong) Injury* injury;
@end
