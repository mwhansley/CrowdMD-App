//
//  TreatmentTableCell.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/25/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "TreatmentTableCell.h"

@interface TreatmentTableCell() {}
@property (nonatomic, strong) IBOutlet UILabel* nameLabel;
@property (nonatomic, strong) IBOutlet UILabel* shortDescription;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@property (nonatomic,strong) IBOutlet UIImageView* stars;
@end

@implementation TreatmentTableCell

- (void)awakeFromNib {
    // Initialization code
}

-(void)setTreatment:(Treatment*)treatment{
    _treatment = treatment;
    [self redisplayData];
}

- (void)redisplayData{
    self.nameLabel.text = self.treatment.name;
    self.shortDescription.text = self.treatment.shortDescription;
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    [self.pictureView setImage:self.treatment.picture];
    
    self.stars.contentMode = UIViewContentModeScaleAspectFit;
    //    if(self.myTreatment.rating == 0) {
    [self.stars setImage:[UIImage imageNamed:@"Stars_0"]];
    //    }
    //    if(self.myTreatment.rating == 1) {
    //        [self.stars setImage:[UIImage imageNamed:@"Stars_1.png"]];
    //    }
    //    if(self.myTreatment.rating == 2) {
    //        [self.stars setImage:[UIImage imageNamed:@"Stars_2.png"]];
    //    }
    //    if(self.myTreatment.rating == 3) {
    //        [self.stars setImage:[UIImage imageNamed:@"Stars_3.png"]];
    //    }
    //    if(self.myTreatment.rating == 4) {
    //        [self.stars setImage:[UIImage imageNamed:@"Stars_4.png"]];
    //    }
    //    if(self.myTreatment.rating == 5) {
    //        [self.stars setImage:[UIImage imageNamed:@"Stars_5.png"]];
    //    }
    //    
    
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
