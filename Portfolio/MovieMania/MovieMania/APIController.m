//
//  APIController.m
//  MovieMania
//
//  Created by Tyler on 8/4/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "APIController.h"

@implementation APIController

-(void)searchOmdbFor:(NSString *)searchTerm
{
    NSString *omdbSearchTerm = [searchTerm stringByReplacingOccurrencesOfString:@" " withString:@"+"];
    NSString *escapedSearchTerm = [omdbSearchTerm stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet alphanumericCharacterSet]];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"https://www.omdbapi.com/?t=%@&y=&plot=short&r=json", escapedSearchTerm]];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error)
    {
      if (error)
      {
          NSLog(@"Could not communicate with OMDB: %@", [error localizedDescription]);
      }
      else
      {
          NSError *parseError = nil;
          NSDictionary *omdbResponse = [NSJSONSerialization JSONObjectWithData:data options:0 error:&parseError];
          [self.delegate didReceiveAPIResults: omdbResponse];
          
      }
      
    }];
    [dataTask resume];

    
}


@end
