//
//  FAKEMyTreatmentTableViewCell.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/21/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "FAKEMyTreatmentTableViewCell.h"

@interface FAKEMyTreatmentTableViewCell() {}
@property (nonatomic, strong) IBOutlet UILabel* treatmentLabel;
@property (nonatomic, strong) IBOutlet UILabel* injuryLabel;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@property (nonatomic,strong) IBOutlet UIImageView* stars;
@end


@implementation FAKEMyTreatmentTableViewCell
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
    if(self.myTreatment.rating == -2) {
        [self.stars setImage:[UIImage imageNamed:@"Stars_4.png"]];
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
