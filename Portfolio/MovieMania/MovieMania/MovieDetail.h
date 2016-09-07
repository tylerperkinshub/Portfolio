//
//  MovieDetail.h
//  MovieMania
//
//  Created by Ross Gottschalk on 8/5/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieDetail : NSObject

@property (nonatomic) NSString *title;
@property (nonatomic) NSString *poster;

+ (MovieDetail *) movieDetailWithDictionary: (NSDictionary *)movieDetailDict;


@end
