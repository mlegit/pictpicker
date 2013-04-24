//
//  PetViewControllerViewController.m
//  Photo
//
//  Created by Emilie Noel on 13-04-21.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "PetViewController.h"


@implementation PetViewController

@synthesize petView;
@synthesize picturePicker;
@synthesize label;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       //self->picturePicker = [[PicturePicker alloc] init] ;
       picturePicker = [[PicturePicker alloc] init ] ;
         
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage * image = [picturePicker getRandomPicture];
    petView = [[UIImageView alloc] initWithImage:image];
    
    
    [petView setFrame: self.view.frame];
    [self.view addSubview:petView];
    label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
    [label setText:@"Sweetie!"];
    [self.view addSubview:label];
    button = [[UIButton alloc] initWithFrame:CGRectMake(30, 30, 200, 30)];
    [button setTitle:@"press me for more Sweetie!" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void) buttonPressed:(UIButton *) eventSender {
    [self newImage];
}

- (void)viewDidUnload
{
    [label release];
    label = nil;
    [picturePicker release];
    picturePicker = nil;
    [petView release];
    petView = nil;
    [super viewDidUnload];
    [super dealloc];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void) newImage {
     UIImage * image = [picturePicker getRandomPicture] ;
    [petView setImage:image];
}

@end
