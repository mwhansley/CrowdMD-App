//
//  FAKEMyTreatmentViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/21/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "FAKEMyTreatmentViewController.h"
#import "MyTreatment.h"
#import "MyTreatmentTableCell.h"
#import "MyTreatmentDetailViewController.h"
#import "FAKEMyTreatmentTableViewCell.h"
#import "MyTreatmentInfoViewController.h"

@interface FAKEMyTreatmentViewController ()  <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray* treatments;
@property (nonatomic, strong) IBOutlet UITableView* tableView;

@end

@implementation FAKEMyTreatmentViewController
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MyTreatmentTableCell* cell = sender;
    NSIndexPath *indexPath =[self.tableView indexPathForCell:cell];
    MyTreatmentInfoViewController* info = segue.destinationViewController;
    MyTreatment* myTreatment = self.treatments[indexPath.row];
    info.myTreatment = myTreatment;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.treatments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"FAKEMyTreatmentCell";
    FAKEMyTreatmentTableViewCell *cell = (FAKEMyTreatmentTableViewCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    MyTreatment *treatment = nil;
    treatment = [self.treatments objectAtIndex:indexPath.row];
    
    
    UILabel *injuryLabel = (UILabel *)[cell viewWithTag:1];
    //injuryLabel.text = treatment.injury;
    injuryLabel.text = treatment.injury;
    
    UILabel *treatmentLabel = (UILabel *)[cell viewWithTag:2];
    treatmentLabel.text = treatment.treatment;
    
    
    UIImageView* pictureView = (UIImageView *)[cell viewWithTag:3];
    pictureView.image = treatment.picture;
    
    UIImageView* starsView = (UIImageView *)[cell viewWithTag:4];
    
    if(treatment.rating == -2) {
        starsView.image = [UIImage imageNamed:@"Stars_4.png"];
    }
    return cell;
}

- (void)viewDidLoad {
    MyTreatment * treatmentTwo = [[MyTreatment alloc] init];
    treatmentTwo.treatment = @"Cortisone";
    treatmentTwo.injury = @"Tennis Elbow";
    treatmentTwo.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
    treatmentTwo.rating = -1;
    
    MyTreatment * treatmentOne = [[MyTreatment alloc] init];
    treatmentOne.treatment = @"Physical Therapy";
    treatmentOne.injury = @"Tennis Elbow";
    treatmentOne.picture = [UIImage imageNamed:@"elbowPT.jpg"];
    treatmentOne.rating = -2;
    
    self.treatments = [NSArray arrayWithObjects:treatmentOne, treatmentTwo, nil];
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
