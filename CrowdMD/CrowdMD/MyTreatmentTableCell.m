//
//  MyTreatmentTableCell.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "MyTreatmentTableCell.h"

@interface MyTreatmentTableCell() {}
@property (nonatomic, strong) IBOutlet UILabel* treatmentLabel;
@property (nonatomic, strong) IBOutlet UILabel* injuryLabel;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@property (nonatomic,strong) IBOutlet UIImageView* stars;

@end

@implementation MyTreatmentTableCell

-(void)setTreatment:(MyTreatment*)myTreatment{
    _myTreatment = myTreatment;
    [self redisplayData];
}

- (void)redisplayData{
    self.treatmentLabel.text = self.myTreatment.treatment;
    self.injuryLabel.text = self.myTreatment.injury;
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    [self.pictureView setImage:self.myTreatment.picture];
    
    self.stars.contentMode = UIViewContentModeScaleAspectFit;
    if(self.myTreatment.rating == 0) {
        [self.stars setImage:[UIImage imageNamed:@"Stars_0.png"]];
    }
    if(self.myTreatment.rating == 1) {
        [self.stars setImage:[UIImage imageNamed:@"Stars_1.png"]];
    }
    if(self.myTreatment.rating == 2) {
        [self.stars setImage:[UIImage imageNamed:@"Stars_2.png"]];
    }
    if(self.myTreatment.rating == 3) {
        [self.stars setImage:[UIImage imageNamed:@"Stars_3.png"]];
    }
    if(self.myTreatment.rating == 4) {
        [self.stars setImage:[UIImage imageNamed:@"Stars_4.png"]];
    }
    if(self.myTreatment.rating == 5) {
        [self.stars setImage:[UIImage imageNamed:@"Stars_5.png"]];
    }
    

    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
