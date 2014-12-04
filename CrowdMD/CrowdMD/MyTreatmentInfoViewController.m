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
#import "MyTreatment.h"

@interface MyTreatmentInfoViewController ()
@property (nonatomic, strong) IBOutlet UILabel* treatmentLabel;
@property (nonatomic, strong) IBOutlet UILabel* injuryLabel;
@property (nonatomic, strong) IBOutlet UILabel* descriptionLabel;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@end

@implementation MyTreatmentInfoViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    MyTreatmentDetailViewController* detail = segue.destinationViewController;
    MyTreatment* myTreatment = self.myTreatment;
    NSInteger treatmentIndex = self.treatmentIndex;
    detail.myTreatment = myTreatment;
    detail.treatmentIndex = treatmentIndex;
}

- (void)viewDidLoad {
    self.treatmentLabel.text = self.myTreatment.treatment;
    self.injuryLabel.text = self.myTreatment.injury;
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    self.descriptionLabel.text = self.myTreatment.longDescription;
    [self.descriptionLabel sizeToFit];
    [self.pictureView setImage:self.myTreatment.picture];
    self.title = @"Treatment Details";
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
