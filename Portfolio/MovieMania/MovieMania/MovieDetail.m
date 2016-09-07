//
//  MovieDetail.m
//  MovieMania
//
//  Created by Ross Gottschalk on 8/5/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "MovieDetail.h"

@implementation MovieDetail

+ (MovieDetail *) movieDetailWithDictionary: (NSDictionary *)movieDetailDict;
{
    MovieDetail *aMovieDetail = nil;
    if (movieDetailDict)
    {
        aMovieDetail = [[MovieDetail alloc] init];
        aMovieDetail.title = [movieDetailDict objectForKey:@"title"];
        aMovieDetail.poster = [movieDetailDict objectForKey:@"poster"];
    }
    return aMovieDetail;
}

@end
