//
//  PainDescriptionViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 12/4/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "PainDescriptionViewController.h"
#import "InjurySuggestionsTableController.h"

@interface PainDescriptionViewController ()
@property (nonatomic) int lastStep;
@property (nonatomic) int stepValue;
@end

@implementation PainDescriptionViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    InjurySuggestionsTableController* destViewController = segue.destinationViewController;
    destViewController.injuries = self.injuries;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.slider.minimumValue = 20;
    self.slider.maximumValue = 100;
    self.stepValue = 20.0f;
    self.lastStep = (self.slider.value) / self.stepValue;
    self.label.text = @"Painful";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)sliderValueChanged:(id)sender {
    float newStep = roundf((self.slider.value) / self.stepValue);
    self.slider.value = newStep * self.stepValue;
    
    if(self.slider.value == 20) {
        self.label.text = @"Not Painful";
    }
    if(self.slider.value == 40) {
        self.label.text = @"A Little Painful";
    }
    if(self.slider.value == 60) {
        self.label.text = @"Painful";
    }
    if(self.slider.value == 80) {
        self.label.text = @"Very Painful";
    }
    if(self.slider.value == 100) {
        self.label.text = @"Extremely Painful";
    }

    
    // Set the label text to the value of the slider as it changes
    //self.label.text = [NSString stringWithFormat:@"%f", self.slider.value];
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
