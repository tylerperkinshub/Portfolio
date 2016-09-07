//
//  MainMovieCollectionViewController.h
//  MovieMania
//
//  Created by Tyler on 8/4/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol APIControllerProtocol

-(void)didReceiveAPIResults:(NSArray *)results;

@end

@interface MainMovieCollectionViewController : UICollectionViewController

@end
