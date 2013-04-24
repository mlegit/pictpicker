//
//  PetView.m
//  Photo
//
//  Created by Emilie Noel on 13-04-20.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import "PetView.h"



@implementation PetView
@synthesize picturePicker;

/**/- (id)init
{
    self = [super initWithFrame:CGRectMake(0, 0, 320, 460)];
    if (self) {
        self.picturePicker = [[PicturePicker alloc] init] ;
        UIImage * image = [[picturePicker getRandomPicture] autorelease];

        [super setImage: image];
        NSLog(@"%@",picturePicker.images);
        NSLog(@"%@",[super image]);
    }
    return self;
}


/*- (id)init
{
    PicturePicker * pict = [[PicturePicker alloc] init];
    self = [super initWithImage:[pict getRandomPicture]];
    
    return self;
}*/




- (void) getNewImage {
    self.image = [picturePicker getRandomPicture];
}

- (void) dealloc {
    [picturePicker release];
    picturePicker = nil;
    [super dealloc];
}
@end
