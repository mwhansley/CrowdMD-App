//
//  MyTreatmentTableController.m
//  CrowdMD
//
//  Created by Megan Hansley on 11/17/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "MyTreatmentTableController.h"
#import "MyTreatmentTableCell.h"
#import "MyTreatmentDetailViewController.h"
#import "MyTreatment.h"

@interface MyTreatmentTableController ()

@end

@implementation MyTreatmentTableController
{
    NSArray *treatments;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MyTreatment * treatmentOne = [[MyTreatment alloc] init];
    treatmentOne.treatment = @"Cortisone";
    treatmentOne.injury = @"Tennis Elbow";
    
    MyTreatment * treatmentTwo = [[MyTreatment alloc] init];
    treatmentTwo.treatment = @"PT";
    treatmentTwo.injury = @"Tennis Elbow";
    
    treatments = [NSArray arrayWithObjects:treatmentOne, treatmentTwo, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"MyTreatmentCell";
    MyTreatmentTableCell *cell = (MyTreatmentTableCell *)[self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    // Configure the cell...
//    if (cell == nil) {
//        cell = [[MyTreatmentTableCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
    // Display recipe in the table cell
    MyTreatment *treatment = nil;
   // treatment = [self.fetchedResultsController objectAtIndexPath:indexPath];
    treatment = [treatments objectAtIndex:indexPath.row];

    
    UILabel *injuryLabel = (UILabel *)[cell viewWithTag:1];
    //injuryLabel.text = treatment.injury;
    injuryLabel.text = treatment.injury;
    
     UILabel *treatmentLabel = (UILabel *)[cell viewWithTag:1];
     treatmentLabel.text = treatment.treatment;

    
//    UIImageView* pictureView = (UIImageView *)[cell viewWithTag:3];
//    pictureView.image = treatment.picture;
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showMyTreatmentDetail"]) {
        NSIndexPath *indexPath = nil;
        MyTreatment *treatment = nil;
        
        indexPath = [self.tableView indexPathForSelectedRow];
        treatment = [treatments objectAtIndex:indexPath.row];
        
        
        MyTreatmentDetailViewController *destViewController = segue.destinationViewController;
        destViewController.myTreatment = treatment;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [treatments count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 71;
}

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
