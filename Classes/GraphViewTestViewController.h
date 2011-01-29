//
//  GraphViewTestViewController.h
//  GraphViewTest
//
//  Created by shuichi on 11/01/30.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "S7GraphView.h"

@interface GraphViewTestViewController : UIViewController
<S7GraphViewDataSource>
{

	S7GraphView *graphView;
}

@end

