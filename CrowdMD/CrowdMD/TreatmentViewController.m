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
@property (nonatomic, strong) NSMutableArray* treatments;
@property (nonatomic, strong) IBOutlet UITableView* tableView;
@end

@implementation TreatmentViewController

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TreatmentTableCell* cell = sender;
    NSIndexPath *indexPath =[self.tableView indexPathForCell:cell];
    TreatmentInfoViewController* info = segue.destinationViewController;
    Treatment* treatment = self.treatments[indexPath.row];
    info.treatment = treatment;
    info.injury = self.injury;
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
-(id)init {
    self = [super init];
    return self;
}

- (void)viewDidLoad {
    self.treatments = [[NSMutableArray alloc] init];
    [self.treatments addObjectsFromArray:self.injury.treatments];
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
