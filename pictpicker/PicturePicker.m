//
//  PicturePicker.m
//  Photo
//
//  Created by Emilie Noel on 12-05-20.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PicturePicker.h"

@implementation PicturePicker
@synthesize images;
@synthesize pathToImage;

-(PicturePicker *) init {
    self = [super init];
    
    
    if (self) {
        [self listFileAtPath:NULL];        
        [self listFiles];
        pathToImage = [[NSMutableDictionary alloc] initWithCapacity:images.count];
        
    }
    return self;
}


-(UIImage *) getRandomPicture {
    if ([images count] == 1) {
        NSLog(@"%@", [images objectAtIndex:0]);
        return [[[UIImage alloc] initWithContentsOfFile:[images objectAtIndex:0]] autorelease];
    }
    
    NSString* imagePath = [images objectAtIndex: arc4random() % (images.count)];
    UIImage * image = [pathToImage valueForKey:imagePath];
    if (image == nil) {
        image =  [[[UIImage alloc] initWithContentsOfFile:imagePath] autorelease]; 
        [pathToImage setValue:image forKey:imagePath];
    }
    return image; 
}

- (void)listFiles{
    NSLog(@"listing files");
    
    NSFileManager * defaultManager = [NSFileManager defaultManager];
    
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    NSString * documentsPath = [resourcePath stringByAppendingPathComponent:@"Pets"];
    NSLog(@" %@", documentsPath);

    NSArray * fileName = [defaultManager contentsOfDirectoryAtPath:documentsPath error:NULL];
    images = [[NSMutableArray alloc] initWithArray:fileName];
    
    for (int i = 0; i < [fileName count]; i++) {
        [images replaceObjectAtIndex:i withObject:[documentsPath stringByAppendingPathComponent: [fileName objectAtIndex:i]]];
        NSLog(@"%@", [images objectAtIndex:i]);
    }
}

-(NSArray *)listFileAtPath:(NSString *)path
{
    
    NSString * resourcePath = [[NSBundle mainBundle] resourcePath];
    NSString * documentsPath = [resourcePath stringByAppendingPathComponent:@"Pets"];
    
    NSLog(@" %@", documentsPath);
    
    NSLog(@"LISTING ALL FILES FOUND");
    
    int count;
    
    NSArray *directoryContent = [[NSFileManager defaultManager] contentsOfDirectoryAtPath:documentsPath error:NULL];
    for (count = 0; count < (int)[directoryContent count]; count++)
    {
        NSLog(@"File %d: %@", (count + 1), [directoryContent objectAtIndex:count]);
    }
    return directoryContent;
}

- (void) dealloc {
    [pathToImage release];
    [images release];
    [super dealloc];
}

        
@end
