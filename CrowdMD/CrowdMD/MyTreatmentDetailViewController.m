//
//  MyTreatmentDetailViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "MyTreatmentDetailViewController.h"

@interface MyTreatmentDetailViewController ()
@property (nonatomic, strong) IBOutlet UILabel* injuryLabel;
@property (nonatomic, strong) IBOutlet UILabel* treatmentLabel;
@property (nonatomic, strong) IBOutlet UILabel* dateLabel;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@property (strong) NSArray*ratingLabels;
@end

@implementation MyTreatmentDetailViewController

@synthesize ratingLabel = _ratingLabel;
@synthesize ratingLabels = _ratingLabels;
@synthesize starRatingControl = _starRatingControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.injuryLabel.text = self.myTreatment.injury;
    self.treatmentLabel.text = self.myTreatment.treatment;
    self.dateLabel.text = @"You said you would try this on";
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    [self.pictureView setImage:self.myTreatment.picture];
    _ratingLabels = [NSArray arrayWithObjects:@"Not Effective", @"Not-That Helpful", @"Kind-Of Helpful", @"Somewhat Effective", @"Very Effective", @"Extremely Effective", nil];
    
    _starRatingControl.delegate = self;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)starRatingControl:(StarRatingControl *)control didUpdateRating:(NSUInteger)rating {
    self.myTreatment.rating = rating;
    _ratingLabel.text = [_ratingLabels objectAtIndex:rating];
}

- (void)starRatingControl:(StarRatingControl *)control willUpdateRating:(NSUInteger)rating {
    self.myTreatment.rating = rating;
    _ratingLabel.text = [_ratingLabels objectAtIndex:rating];
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
