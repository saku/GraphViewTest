//
//  GraphViewTestViewController.m
//  GraphViewTest
//
//  Created by shuichi on 11/01/30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GraphViewTestViewController.h"

@implementation GraphViewTestViewController




- (void)viewDidLoad {
    [super viewDidLoad];

	CGRect graphRect = CGRectMake(0, 0, 320, 460);
	graphView = [[S7GraphView alloc] initWithFrame:graphRect];
	graphView.dataSource = self;
	[self.view addSubview:graphView];
	[graphView reloadData];

	graphView.backgroundColor = [UIColor whiteColor];
	graphView.drawAxisX = YES;
	graphView.drawAxisY = YES;
	graphView.drawGridX = YES;
	graphView.drawGridY = YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
}


- (void)dealloc {
	[graphView release];
    [super dealloc];
}


#pragma mark -
#pragma mark S7GraphViewDataSource

- (NSUInteger)graphViewNumberOfPlots:(S7GraphView *)graphView {	
	// ここではとりあえず1本
	return 1;
}

- (NSArray *)graphViewXValues:(S7GraphView *)graphView {
	
	// ここではとりあえずX軸を 0〜255 に
	NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:256];
	for ( int i = 0 ; i <= 255 ; i ++ ) {
		[array addObject:[NSNumber numberWithInt:i]];
	}
	
	return array;	
}

- (NSArray *)graphView:(S7GraphView *)graphView yValuesForPlot:(NSUInteger)plotIndex {
	
	// Y軸は0〜999までの整数をランダムに
	// 値の数はX軸と同じく256個
	NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:256];
	
	switch (plotIndex) {
			
		default:
		case 0:
			for ( int i = 0 ; i <= 255 ; i ++ ) {
				[array addObject:[NSNumber numberWithInt:rand()%1000]];
			}
			break;
	}
	return array;	
}

@end
