//
//  InjurySuggestionsViewController.m
//  CrowdMD
//
//  Created by Megan Hansley on 12/4/14.
//  Copyright (c) 2014 Baris, Chris, and Megan. All rights reserved.
//

#import "InjurySuggestionsViewController.h"

@interface InjurySuggestionsViewController ()

@end

@implementation InjurySuggestionsViewController

//
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    if ([segue.identifier isEqualToString:@"showInjuryDetail"]) {
//        NSIndexPath *indexPath = nil;
//        Injury *injury = nil;
//        
//        if (self.searchDisplayController.active) {
//            indexPath = [self.searchDisplayController.searchResultsTableView indexPathForSelectedRow];
//            injury = [searchResults objectAtIndex:indexPath.row];
//        } else {
//            indexPath = [self.tableView indexPathForSelectedRow];
//            injury = [injuries objectAtIndex:indexPath.row];
//        }
//        
//        SegControlViewController *destViewController = segue.destinationViewController;
//        destViewController.injury = injury;
//    }
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
