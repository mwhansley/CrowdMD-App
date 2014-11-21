//
//  MyTreatmentViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/18/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "MyTreatmentViewController.h"
#import "MyTreatment.h"
#import "MyTreatmentDetailViewController.h"
#import "MyTreatmentTableCell.h"

@interface MyTreatmentViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray* treatments;
@property (nonatomic, strong) IBOutlet UITableView* tableView;
@end


@implementation MyTreatmentViewController
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    MyTreatmentTableCell* cell = sender;
    NSIndexPath *indexPath =[self.tableView indexPathForCell:cell];
    MyTreatmentDetailViewController* detail = segue.destinationViewController;
    MyTreatment* myTreatment = self.treatments[indexPath.row];
    detail.myTreatment = myTreatment;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.treatments.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyTreatmentCell";
    MyTreatmentTableCell *cell = (MyTreatmentTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    MyTreatment *treatment = nil;
    treatment = [self.treatments objectAtIndex:indexPath.row];
    
    
    UILabel *injuryLabel = (UILabel *)[cell viewWithTag:1];
    //injuryLabel.text = treatment.injury;
    injuryLabel.text = treatment.injury;
    
    UILabel *treatmentLabel = (UILabel *)[cell viewWithTag:2];
    treatmentLabel.text = treatment.treatment;
    
    
    UIImageView* pictureView = (UIImageView *)[cell viewWithTag:3];
    pictureView.image = treatment.picture;
    
    return cell;
}

- (void)viewDidLoad {
    MyTreatment * treatmentOne = [[MyTreatment alloc] init];
    treatmentOne.treatment = @"Cortisone";
    treatmentOne.injury = @"Tennis Elbow";
    treatmentOne.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
    
    MyTreatment * treatmentTwo = [[MyTreatment alloc] init];
    treatmentTwo.treatment = @"Physical Therapy";
    treatmentTwo.injury = @"Tennis Elbow";
    treatmentTwo.picture = [UIImage imageNamed:@"elbowPT.jpg"];
    
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

- (void)starRatingControl:(StarRatingControl *)control didUpdateRating:(NSUInteger)rating {
  //  _ratingLabel.text = [_ratingLabels objectAtIndex:rating];
}

- (void)starRatingControl:(StarRatingControl *)control willUpdateRating:(NSUInteger)rating {
   // _ratingLabel.text = [_ratingLabels objectAtIndex:rating];
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
