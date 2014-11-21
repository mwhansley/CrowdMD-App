//
//  MyTreatmentInfoViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/21/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "MyTreatmentInfoViewController.h"
#import "MyTreatmentTableCell.h"
#import "MyTreatmentDetailViewController.h"

@interface MyTreatmentInfoViewController ()

@end

@implementation MyTreatmentInfoViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    MyTreatmentDetailViewController* detail = segue.destinationViewController;
    MyTreatment* myTreatment = self.myTreatment;
    detail.myTreatment = myTreatment;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
