//
//  MyTreatment.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "MyTreatment.h"


@implementation MyTreatment

+(NSMutableArray*)myTreatments {
    static NSMutableArray *array;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        array = [NSMutableArray array];
        MyTreatment * treatmentOne = [[MyTreatment alloc] init];
        treatmentOne.treatment = @"Cortisone";
        treatmentOne.injury = @"Tennis Elbow";
        treatmentOne.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
        treatmentOne.longDescription = @"True lateral epicondylitis will respond promptly to a cortisone injection. How long the benefit lasts varies from a few weeks to several months. Injections may be repeated up to three times if there is a good response. After injections, patients are advised to wear a brace and be monitored with regards to their symptoms. Many resume normal activities and work without restrictions.";
        treatmentOne.rating = -1;
        
        MyTreatment * treatmentTwo = [[MyTreatment alloc] init];
        treatmentTwo.treatment = @"Physical Therapy";
        treatmentTwo.injury = @"Tennis Elbow";
        treatmentTwo.picture = [UIImage imageNamed:@"elbowPT.jpg"];
        treatmentTwo.longDescription = @"Physical Therapy may take seven to ten weeks for you to feel significantly less pain and a better grip so it is important to keep going with the program for at least this long. More than seven out of ten people with tennis elbow have no pain and an improved grip after completing a PT program.";
        treatmentTwo.rating = -1;
        
        [array addObject:treatmentOne];
        [array addObject:treatmentTwo];
        
    });
    return array;
}


@end
