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
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy"];
    NSString *year = [formatter stringFromDate:self.myTreatment.date];
    [formatter setDateFormat:@"MM"];
    NSString *month = [formatter stringFromDate:self.myTreatment.date];
    [formatter setDateFormat:@"dd"];
    NSString *day = [formatter stringFromDate:self.myTreatment.date];
    
    if([month  isEqual: @"01"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"January %@, %@", day, year];
    } else if ([month  isEqual: @"02"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"February %@, %@", day, year];
    } else if ([month  isEqual: @"03"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"March %@, %@", day, year];
    }else if ([month  isEqual: @"04"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"April %@, %@", day, year];
    }else if ([month  isEqual: @"05"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"May%@, %@", day, year];
    }else if ([month  isEqual: @"06"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"June %@, %@", day, year];
    }else if ([month  isEqual: @"07"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"July %@, %@", day, year];
    }else if ([month  isEqual: @"08"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"August %@, %@", day, year];
    }else if ([month  isEqual: @"09"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"September %@, %@", day, year];
    }else if ([month  isEqual: @"10"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"October %@, %@", day, year];
    }else if ([month  isEqual: @"11"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"November %@, %@", day, year];
    }else if ([month  isEqual: @"12"]) {
        self.dateLabel.text = [NSString stringWithFormat:@"December %@, %@", day, year];
    }
        
 
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
  //  self.myTreatment.rating = rating;
    NSMutableArray* myTreatments = [MyTreatment myTreatments];
    MyTreatment* myTreatment = [myTreatments objectAtIndex:self.treatmentIndex];
    myTreatment.rating = rating;
    
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
