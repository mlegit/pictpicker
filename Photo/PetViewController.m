//
//  PetViewControllerViewController.m
//  Photo
//
//  Created by Emilie Noel on 13-04-21.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "PetViewControllerViewController.h"

@interface PetViewControllerViewController ()

@end

@implementation PetViewControllerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
