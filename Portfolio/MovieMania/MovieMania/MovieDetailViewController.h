//
//  MovieDetailViewController.h
//  MovieMania
//
//  Created by Tyler on 8/4/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieDetail.h"

@protocol APIControllerProtocol

-(void)didReceiveAPIResults:(NSArray *)results;

@end

@interface MovieDetailViewController : UIViewController

@property (nonatomic) MovieDetail *movie;

@property (weak, nonatomic) IBOutlet UILabel *movieNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *releaseDateLabel;
@property (weak, nonatomic) IBOutlet UILabel *directorLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UILabel *castLabel;
@property (weak, nonatomic) IBOutlet UIImageView *detaiPosterImageView;

@end
