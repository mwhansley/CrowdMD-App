//
//  TreatmentInfoViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/25/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "TreatmentInfoViewController.h"
#import "MyTreatment.h"
#import "TreatmentViewController.h"

@interface TreatmentInfoViewController ()
@property (nonatomic, strong) IBOutlet UILabel* nameLabel;
@property (nonatomic, strong) IBOutlet UILabel* injuryLabel;
@property (nonatomic, strong) IBOutlet UILabel* descriptionLabel;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@end

@implementation TreatmentInfoViewController
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddToMyTreatments"]) {
        NSMutableArray * treatments = [MyTreatment myTreatments];
        MyTreatment * new = [[MyTreatment alloc] init];
        new.treatment = self.treatment.name;
        new.injury = self.treatment.injuryName;
        new.picture = self.treatment.picture;
        new.longDescription = self.treatment.longDescription;
        new.rating = -1;
        new.date = [NSDate date];

        [treatments addObject:new];
        
        TreatmentViewController* treatmentList = segue.destinationViewController;
        treatmentList.injury = self.injury;
    }
}
- (void)viewDidLoad {
    self.injuryLabel.text = self.treatment.injuryName;
    self.nameLabel.text = self.treatment.name;
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    self.descriptionLabel.text = self.treatment.longDescription;
    [self.pictureView setImage:self.treatment.picture];
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
