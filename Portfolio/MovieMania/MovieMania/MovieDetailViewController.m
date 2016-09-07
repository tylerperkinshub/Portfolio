//
//  MovieDetailViewController.m
//  MovieMania
//
//  Created by Tyler on 8/4/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "MainMovieCollectionViewController.h"
#import "APIController.h"
#import "Movie.h"

@interface MovieDetailViewController () <APIControllerProtocol>

@end

@implementation MovieDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

//    self.movieNameLabel.text = @"10 Cloverfield Lane";
//    self.releaseDateLabel.text = @"March 15, 2016";
//    self.directorLabel.text = @"Dan Trachtenburg";
//    self.synopsisLabel.text = @"After getting in a car accident, a woman is held in a shelter with two men, who claim the outside world is affected by a widespread chemical attack.";
//    self.castLabel.text = @"John Goodman";
//    self.detaiPosterImageView.image = [UIImage imageNamed:_movie.poster];
//    
    APIController *apiController = [[APIController alloc] init];
    apiController.delegate = self;
    [apiController searchOmdbFor:@"10 Cloverfield Lane"];
//    NSLog(@"%@", self.movie.searchTerm);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//-(void)didReceiveAPIResults:(NSDictionary *)omdbResponse
//{
//    for (NSDictionary *result in omdbResponse)
//    {
//        NSString *name = result[@"Title"];
//        self.movieNameLabel.text = [NSString stringWithFormat:@"%@", name];
//
//    }
//    dispatch_async(dispatch_get_main_queue(), ^{[self.view setNeedsDisplay];
//    });
//}

-(void)didReceiveAPIResults:(NSDictionary *)omdbResponse
{
    {
        NSString *name = omdbResponse[@"Title"];
        self.movieNameLabel.text = name;
        
        NSString *releaseDate = omdbResponse[@"Released"];
        self.releaseDateLabel.text = releaseDate;
        
        NSString *director = omdbResponse[@"Director"];
        self.directorLabel.text = director;
        
        NSString *synopsis = omdbResponse[@"Plot"];
        self.synopsisLabel.text = synopsis;
        
        NSString *cast = omdbResponse[@"Actors"];
        self.castLabel.text = cast;
        
//        self.detaiPosterImageView.image = [UIImage imageNamed:_movie.poster];
        
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{[self.view setNeedsDisplay];
    });
}

@end
