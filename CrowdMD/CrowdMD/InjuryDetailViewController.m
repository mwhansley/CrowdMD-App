//
//  InjuryDetailViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "InjuryDetailViewController.h"
#import "TreatmentViewController.h"

@interface InjuryDetailViewController ()
@property (nonatomic, strong) IBOutlet UILabel* nameLabel;
@property (nonatomic, strong) IBOutlet UILabel* descriptionLabel;
@property (nonatomic,strong) IBOutlet UIImageView* pictureView;
@end

@implementation InjuryDetailViewController

- (void)viewDidLoad {
    self.nameLabel.text = self.injury.name;
    self.descriptionLabel.text = self.injury.longDescription;
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    [self.pictureView setImage:self.injury.picture];
    
    [super viewDidLoad];
}
-(id)init {
    self = [super init];
    return self;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
