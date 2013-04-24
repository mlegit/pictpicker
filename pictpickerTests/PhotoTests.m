//
//  PhotoTests.m
//  PhotoTests
//
//  Created by Emilie Noel on 12-05-20.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "PhotoTests.h"
    
@implementation PhotoTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    PicturePicker * pp = 
    [[PicturePicker alloc] init];
    UIImage * image = pp.getRandomPicture;
    assert(image);
    assert([image size].width != 0 && [image size].height !=0);
    
    [pp release];
}



@end
