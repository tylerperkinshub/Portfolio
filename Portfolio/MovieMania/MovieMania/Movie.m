//
//  Movie.m
//  MovieMania
//
//  Created by Tyler on 8/6/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "Movie.h"

@implementation Movie


+ (Movie *)movieWithDictionary:(NSDictionary *)movieDict
{
    Movie *aMovie = nil;
    if (movieDict)
    {
        aMovie = [[Movie alloc] init];
        aMovie.name = movieDict[@"Title"];
//        aMovie.login = friendDict[@"login"];
//        aMovie.location = friendDict[@"location"];
//        aMovie.avatar_url = friendDict[@"avatar_url"];
//        aMovie.public_repos = friendDict[@"public_repos"];
    }
    
    return aMovie;
}

@end
