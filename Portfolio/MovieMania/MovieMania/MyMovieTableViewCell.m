//
//  MyMovieTableViewCell.m
//  MovieMania
//
//  Created by Tyler on 8/7/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "MyMovieTableViewCell.h"

@implementation MyMovieTableViewCell

+ (MyMovieTableViewCell *)movieItemWithDictionary:(NSDictionary *)myMovieDict;
{
    MyMovieTableViewCell *aMovie = nil;
    if (myMovieDict)
    {
        aMovie =[[MyMovieTableViewCell alloc] init];
        aMovie.myListMovie = [myMovieDict objectForKey:@"title"];
        aMovie.myListReleaseDate = [myMovieDict objectForKey:@"releaseDate"];
    }
    
    return 0;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
