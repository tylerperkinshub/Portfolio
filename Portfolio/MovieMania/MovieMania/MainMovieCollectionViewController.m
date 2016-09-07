//
//  MainMovieCollectionViewController.m
//  MovieMania
//
//  Created by Tyler on 8/4/16.
//  Copyright © 2016 Tyler. All rights reserved.
//

#import "MainMovieCollectionViewController.h"
#import "MovieDetailViewController.h"
#import "MovieDetail.h"


#import "MainPosterViewCell.h"

@interface MainMovieCollectionViewController () <APIControllerProtocol>

// This is populating an array of all movies to make an array of the json file so that it can be seque'd to the MovieDetailViewController.
@property (strong, nonatomic) NSMutableArray *allMovies;


@end

@implementation MainMovieCollectionViewController

//static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
// Instantiates the all movies array. Makes it a thing.
    self.allMovies = [[NSMutableArray alloc] init];
    [self loadMovies];

    

//    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}


- (void) loadMovies
{

//  This loads the json file.
    NSString *filepath = [[NSBundle mainBundle] pathForResource:@"Movies" ofType:@"json"];\
//
    NSArray *moviesJSON = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:filepath] options:0 error:nil];
    for (NSDictionary *aDict in moviesJSON)
    {
        MovieDetail *aMovie = [MovieDetail movieDetailWithDictionary: aDict];
        [self.allMovies addObject:aMovie];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"MovieDetailSegue"])
    {
        MovieDetailViewController *movieDetailVC = [segue destinationViewController];
        MainPosterViewCell *selectedCell = (MainPosterViewCell *) sender;
        NSIndexPath *indexPath = [self.collectionView indexPathForCell:selectedCell];
        MovieDetail *selectedMovie = self.allMovies[indexPath.row];
        movieDetailVC.movie = selectedMovie;
        
    }
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}


#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.allMovies.count;
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
   
    // Configure the cell
    
    
    MainPosterViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PosterCell" forIndexPath:indexPath];
    MovieDetail *movie = self.allMovies [indexPath.row];
    cell.posterImageView.image = [UIImage imageNamed:movie.poster];
    
    
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
