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
#import "MyTreatmentInfoViewController.h"

@interface MyTreatmentViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray* treatments;
@property (nonatomic, strong) IBOutlet UITableView* tableView;
@end


@implementation MyTreatmentViewController
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
    
    UIImageView* starsView = (UIImageView *)[cell viewWithTag:4];
    
    if(treatment.rating == 0) {
        starsView.image = [UIImage imageNamed:@"Stars_0.png"];
    } else if(treatment.rating == 1) {
        starsView.image = [UIImage imageNamed:@"Stars_1.png"];
    } else if(treatment.rating == 2) {
        starsView.image = [UIImage imageNamed:@"Stars_2.png"];
    } else if(treatment.rating == 3) {
        starsView.image = [UIImage imageNamed:@"Stars_3.png"];
    } else if(treatment.rating == 4) {
        starsView.image = [UIImage imageNamed:@"Stars_4.png"];
    } else if(treatment.rating == 5) {
        starsView.image = [UIImage imageNamed:@"Stars_5.png"];
    }
    
    return cell;
}

- (void)viewDidLoad {
    MyTreatment * treatmentOne = [[MyTreatment alloc] init];
    treatmentOne.treatment = @"Cortisone";
    treatmentOne.injury = @"Tennis Elbow";
    treatmentOne.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
    treatmentOne.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
    treatmentOne.rating = -1;
    
    MyTreatment * treatmentTwo = [[MyTreatment alloc] init];
    treatmentTwo.treatment = @"Physical Therapy";
    treatmentTwo.injury = @"Tennis Elbow";
    treatmentTwo.picture = [UIImage imageNamed:@"elbowPT.jpg"];
    treatmentOne.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
    treatmentTwo.rating = -1;
    
    self.treatments = [NSArray arrayWithObjects:treatmentOne, treatmentTwo, nil];
    [super viewDidLoad];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
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

@end
