//
//  Injury.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Injury : NSObject
@property (nonatomic,strong)NSString* name;
@property (nonatomic,strong)NSString* shortDescription;
@property (nonatomic)UIImage* picture;
//Add something for array of treatment plans!!
@end