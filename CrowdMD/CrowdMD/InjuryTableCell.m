//
//  InjuryTableCell.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/13/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "InjuryTableCell.h"
@interface InjuryTableCell() {}
@property (nonatomic, strong) IBOutlet UILabel* nameLabel;
@property (nonatomic, strong) IBOutlet UILabel* descriptionLabel;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@end

@implementation InjuryTableCell

-(void)setInjury:(Injury*)injury{
    _injury = injury;
    [self redisplayData];
}

- (void)redisplayData{
    self.nameLabel.text = self.injury.name;
    self.descriptionLabel.text = self.injury.description;
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    [self.pictureView setImage:self.injury.picture];
    
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
