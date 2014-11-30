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
        treatmentOne.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
        treatmentOne.rating = -1;
        
        MyTreatment * treatmentTwo = [[MyTreatment alloc] init];
        treatmentTwo.treatment = @"Physical Therapy";
        treatmentTwo.injury = @"Tennis Elbow";
        treatmentTwo.picture = [UIImage imageNamed:@"elbowPT.jpg"];
        treatmentOne.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
        treatmentTwo.rating = -1;
        
        [array addObject:treatmentOne];
        [array addObject:treatmentTwo];
        
    });
    return array;
}


@end
