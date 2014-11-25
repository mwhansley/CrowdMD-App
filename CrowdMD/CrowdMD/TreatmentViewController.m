//
//  TreatmentViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/25/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "TreatmentViewController.h"
#import "Treatment.h"
#import "TreatmentTableCell.h"
#import "TreatmentInfoViewController.h"

@interface TreatmentViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray* treatments;
@property (nonatomic, strong) IBOutlet UITableView* tableView;
@end

@implementation TreatmentViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TreatmentTableCell* cell = sender;
    NSIndexPath *indexPath =[self.tableView indexPathForCell:cell];
    TreatmentInfoViewController* info = segue.destinationViewController;
    Treatment* treatment = self.treatments[indexPath.row];
    info.treatment = treatment;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.treatments.count;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TreatmentCell";
    TreatmentTableCell *cell = (TreatmentTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    Treatment *treatment = nil;
    treatment = [self.treatments objectAtIndex:indexPath.row];
    
    
    UILabel *nameLabel = (UILabel *)[cell viewWithTag:1];
    nameLabel.text = treatment.name;
    
    UILabel *injuryLabel = (UILabel *)[cell viewWithTag:2];
    injuryLabel.text = treatment.injuryName;
    
    UILabel *descriptionLabel = (UILabel *)[cell viewWithTag:2];
    descriptionLabel.text = treatment.shortDescription;
    
    
    UIImageView* pictureView = (UIImageView *)[cell viewWithTag:3];
    pictureView.image = treatment.picture;
    
//    UIImageView* starsView = (UIImageView *)[cell viewWithTag:4];
//    
//    if(treatment.rating == 0) {
//        starsView.image = [UIImage imageNamed:@"Stars_0.png"];
//    } else if(treatment.rating == 1) {
//        starsView.image = [UIImage imageNamed:@"Stars_1.png"];
//    } else if(treatment.rating == 2) {
//        starsView.image = [UIImage imageNamed:@"Stars_2.png"];
//    } else if(treatment.rating == 3) {
//        starsView.image = [UIImage imageNamed:@"Stars_3.png"];
//    } else if(treatment.rating == 4) {
//        starsView.image = [UIImage imageNamed:@"Stars_4.png"];
//    } else if(treatment.rating == 5) {
//        starsView.image = [UIImage imageNamed:@"Stars_5.png"];
//    }
    
    return cell;
}

- (void)viewDidLoad {
    Treatment * treatmentOne = [[Treatment alloc] init];
    treatmentOne.name = @"Cortisone";
    treatmentOne.injuryName = @"Tennis Elbow";
    treatmentOne.shortDescription = @"A shot in the elbow....";
    treatmentOne.picture = [UIImage imageNamed:@"elbowCortisone.jpg"];
    treatmentOne.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
    //treatmentOne.rating = -1;
    
    Treatment * treatmentTwo = [[Treatment alloc] init];
    treatmentTwo.name = @"Phsyical Therapy";
    treatmentTwo.injuryName = @"Tennis Elbow";
    treatmentTwo.shortDescription = @"A shot in the elbow....";
    treatmentTwo.longDescription = @"Physical therapy or physiotherapy (sometimes abbreviated to PT) is the health care profession primarily concerned with the remediation of impairments and disabilities and the promotion of mobility, functional ability, quality of life and movement potential through examination, evaluation, diagnosis and physical intervention. ";
    treatmentTwo.picture = [UIImage imageNamed:@"elbowPT.jpg"];
    //treatmentTwo.rating = -1;
    
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
*/

@end
