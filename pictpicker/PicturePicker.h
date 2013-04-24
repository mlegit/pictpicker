//
//  PicturePicker.h
//  Photo
//
//  Created by Emilie Noel on 12-05-20.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PicturePicker : NSObject

@property (readonly, retain, nonatomic) NSMutableArray *images;
@property (readonly, nonatomic) NSMutableDictionary * pathToImage;

-(PicturePicker *) init;
-(UIImage *) getRandomPicture; 
-(void) dealloc;

@end





