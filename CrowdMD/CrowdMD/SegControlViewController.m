//
//  SegControlViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 12/2/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "SegControlViewController.h"
#import "InjuryDetailViewController.h"
#import "TreatmentViewController.h"

@interface SegControlViewController ()
@property (nonatomic) IBOutlet UISegmentedControl *typeSegmentedControl;
@property (nonatomic) IBOutlet UIView *contentView;
@property (nonatomic) UIViewController * currentViewController;
@end

@implementation SegControlViewController

- (void)viewDidLoad {
    NSLog(@"Storyboard: %@", self.storyboard);

    InjuryDetailViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"InjuryDetails"];
    vc.injury = self.injury;
    [self addChildViewController:vc];
        
    NSLog(@"View: %@", vc.vcview);
    self.currentViewController = vc;
    vc.view.frame = self.contentView.bounds;
    [self.contentView addSubview:vc.vcview];
    [super viewDidLoad];

}
- (IBAction)segmentChanged:(UISegmentedControl *)sender {
    if(self.typeSegmentedControl.selectedSegmentIndex == 0) {
        InjuryDetailViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"InjuryDetails"];
        vc.injury = self.injury;
        [self addChildViewController:vc];
        [self transitionFromViewController:self.currentViewController toViewController:vc duration:0.5 options:UIViewAnimationOptionTransitionNone animations:^{
            [self.currentViewController.view removeFromSuperview];
            vc.view.frame = self.contentView.bounds;
            [self.contentView addSubview:vc.vcview];
        } completion:^(BOOL finished) {
            [vc didMoveToParentViewController:self];
            [self.currentViewController removeFromParentViewController];
            self.currentViewController = vc;
        }];
        self.navigationItem.title = vc.title;
    } else if (self.typeSegmentedControl.selectedSegmentIndex == 1) {
        TreatmentViewController *vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SuggestedTreatments"];
        vc.injury = self.injury;
        [self addChildViewController:vc];
        [self transitionFromViewController:self.currentViewController toViewController:vc duration:0.5 options:UIViewAnimationOptionTransitionNone animations:^{
            [self.currentViewController.view removeFromSuperview];
            vc.view.frame = self.contentView.bounds;
            [self.contentView addSubview:vc.vcview];
        } completion:^(BOOL finished) {
            [vc didMoveToParentViewController:self];
            [self.currentViewController removeFromParentViewController];
            self.currentViewController = vc;
        }];
        self.navigationItem.title = vc.title;
    }
    
//    UIViewController *vc = [self viewControllerForSegmentIndex:sender.selectedSegmentIndex];
//    [self addChildViewController:vc];
//    [self transitionFromViewController:self.currentViewController toViewController:vc duration:0.5 options:UIViewAnimationOptionTransitionFlipFromBottom animations:^{
//        [self.currentViewController.view removeFromSuperview];
//        vc.view.frame = self.contentView.bounds;
//        [self.contentView addSubview:vc.view];
//    } completion:^(BOOL finished) {
//        [vc didMoveToParentViewController:self];
//        [self.currentViewController removeFromParentViewController];
//        self.currentViewController = vc;
//    }];
//    self.navigationItem.title = vc.title;
}

//- (UIViewController *)viewControllerForSegmentIndex:(NSInteger)index {
//    UIViewController *vc;
//    switch (index) {
//        case 0:
//            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"InjuryDetails"];
//            break;
//        case 1:
//            vc = [self.storyboard instantiateViewControllerWithIdentifier:@"SuggestedTreatments"];
//            break;
//    }
//    return vc;
//}


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

@end
