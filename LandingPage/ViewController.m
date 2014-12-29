//
//  ViewController.m
//  LandingPage
//
//  Created by Zhizhik on 26.12.14.
//  Copyright (c) 2014 c. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UICollectionViewDelegate, UICollectionViewDataSource>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"1"];
    UICollectionViewFlowLayout *layout = (id)self.collectionView.collectionViewLayout;
    layout.itemSize = self.view.frame.size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:@"1" forIndexPath:indexPath];
    return cell;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    self.pageControl.currentPage = self.collectionView.contentOffset.x/self.collectionView.frame.size.width;
}
//- (IBAction)pageControl:(UIPageControl *)sender {
//    self.resultText.text = 
//}
//- (IBAction)button:(id)sender {
//    [self scrollViewDidEndDecelerating:(UIScrollView)];
//}
@end
