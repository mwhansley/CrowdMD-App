//
//  BodyViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 12/4/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "BodyViewController.h"
#import "BodyPart.h"
#import "PainDescriptionViewController.h"

@interface BodyViewController ()

@end

@implementation BodyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSMutableArray *injuries = nil;
    if ([segue.identifier isEqualToString:@"Elbow"]) {
        injuries = [BodyPart elbowInjuries];
    }
    if ([segue.identifier isEqualToString:@"Foot"]) {
        injuries = [BodyPart footInjuries];
    }
    if ([segue.identifier isEqualToString:@"Knee"]) {
        injuries = [BodyPart kneeInjuries];
    }
    if ([segue.identifier isEqualToString:@"Groin"]) {
        injuries = [BodyPart groinInjuries];
    }
    if ([segue.identifier isEqualToString:@"Quad"]) {
        injuries = [BodyPart quadInjuries];
    }
    if ([segue.identifier isEqualToString:@"Shin"]) {
        injuries = [BodyPart shinInjuries];
    }
    
    PainDescriptionViewController* destViewController = segue.destinationViewController;
    destViewController.injuries = injuries;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
