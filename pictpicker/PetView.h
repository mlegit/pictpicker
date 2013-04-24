//
//  PetView.h
//  Photo
//
//  Created by Emilie Noel on 13-04-20.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PicturePicker.h"

@interface PetView : UIImageView


@property(retain) PicturePicker * picturePicker;

-(void) getNewImage;
-(void) dealloc;
@end
