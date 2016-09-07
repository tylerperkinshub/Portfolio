//
//  APIController.h
//  MovieMania
//
//  Created by Tyler on 8/4/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MovieDetailViewController.h"

@interface APIController : NSObject

@property (strong, nonatomic) id<APIControllerProtocol> delegate;

-(void)searchOmdbFor: (NSString *)searchTerm;

@end
