//
//  MyTreatment.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MyTreatment : NSObject
@property (nonatomic,strong)NSString* treatment;
@property (nonatomic,strong)NSString* injury;
@property (nonatomic)NSDate * date;
@property (nonatomic,strong)NSString* longDescription;
@property (nonatomic)NSInteger* rating;
@property (nonatomic)UIImage* picture;
@end
