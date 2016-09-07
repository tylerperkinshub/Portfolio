//
//  MyMovieTableViewCell.h
//  MovieMania
//
//  Created by Tyler on 8/7/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyMovieTableViewCell : UITableViewCell

@property (nonatomic) NSString *myListMovie;
@property (nonatomic) NSString *myListReleaseDate;

+ (MyMovieTableViewCell *)movieItemWithDictionary:(NSDictionary *)myMovieDict;

@end
