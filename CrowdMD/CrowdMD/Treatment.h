//
//  Treatment.h
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Treatment : NSObject
@property (nonatomic,strong)NSString* name;
@property (nonatomic,strong)NSString* injuryName;
@property (nonatomic,strong)NSString* shortDescription;
@property (nonatomic,strong)NSString* longDescription;
@property (nonatomic)NSInteger* rating;
@property (nonatomic)UIImage* picture;

+(NSMutableArray*)treatments;
@end
