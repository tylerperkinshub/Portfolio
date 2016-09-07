//
//  Movie.h
//  MovieMania
//
//  Created by Tyler on 8/6/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (nonatomic) NSString *searchTerm;
@property (nonatomic) NSString *name; 
@property (nonatomic) NSString *releaseDate;
@property (nonatomic) NSString *director;
@property (nonatomic) NSString *synonpsis;
@property (nonatomic) NSString *cast;

+ (Movie *)movieWithDictionary:(NSDictionary *)MovieDict;


@end
