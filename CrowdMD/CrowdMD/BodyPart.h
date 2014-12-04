//
//  BodyPart.h
//  CrowdMD
//
//  Created by Megan Hansley on 12/4/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BodyPart : NSObject
+(NSMutableArray*)elbowInjuries;
+(NSMutableArray*)footInjuries;
+(NSMutableArray*)quadInjuries;
+(NSMutableArray*)kneeInjuries;
+(NSMutableArray*)groinInjuries;
+(NSMutableArray*)shinInjuries;
@end
