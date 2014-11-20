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
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
