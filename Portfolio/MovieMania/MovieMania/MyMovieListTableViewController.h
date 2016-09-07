//
//  MyMovieListTableViewController.h
//  MovieMania
//
//  Created by Tyler on 8/7/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyMovieListTableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UITableViewCell *myListMovieLabel;
@property (weak, nonatomic) IBOutlet UITableViewCell *myListReleaseDateLabel;

@end
