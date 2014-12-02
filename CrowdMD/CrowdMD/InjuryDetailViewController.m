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
@synthesize segmentedControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    self.nameLabel.text = self.injury.name;
    self.descriptionLabel.text = self.injury.longDescription;
    self.pictureView.contentMode = UIViewContentModeScaleAspectFit;
    [self.pictureView setImage:self.injury.picture];
    
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

- (IBAction)segmentedControlAction:(id)sender {
    if(segmentedControl.selectedSegmentIndex == 0){
        NSString * viewControllerID = @"InjuryDetails";
        UIStoryboard * storyboard = self.storyboard;
        InjuryDetailViewController * controller = (InjuryDetailViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
       // [self presentViewController:controller animated:YES completion:nil];
        
        
//        InjuryDetailViewController *vc1 = [[InjuryDetailViewController alloc] init];
//        vc1.injury = self.injury;
//        [self presentViewController:vc1 animated:YES completion:nil];
        [self.navigationController pushViewController:controller animated:YES];
        
        //self.view.backgroundColor = [UIColor redColor];
    } else if(segmentedControl.selectedSegmentIndex == 1) {
        NSString * viewControllerID = @"SuggestedTreatments";
        UIStoryboard * storyboard = self.storyboard;
        TreatmentViewController * controller = (TreatmentViewController *)[storyboard instantiateViewControllerWithIdentifier:viewControllerID];
        [self presentViewController:controller animated:YES completion:nil];
        
        
//        TreatmentViewController *vc2 = [[TreatmentViewController alloc] init];
//        vc2.injury = self.injury;
//        [self presentViewController:vc2 animated:YES completion:nil];
//        [self.navigationController popViewControllerAnimated:true];
        [self.navigationController pushViewController:controller animated:YES];
            //self.view.backgroundColor = [UIColor greenColor];
            
        }

}
@end
