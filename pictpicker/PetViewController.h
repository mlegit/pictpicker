//
//  PetViewControllerViewController.h
//  Photo
//
//  Created by Emilie Noel on 13-04-21.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PicturePicker.h"

@interface PetViewController : UIViewController {
    
    IBOutlet UIImageView * petView;
    PicturePicker * picturePicker;
    UILabel * label;
    UIButton * button;

}

-(void) newImage;
-(void) buttonPressed : (UIButton *) eventSender;

@property (retain, nonatomic) IBOutlet UIImageView * petView;
@property(retain) PicturePicker * picturePicker;
@property(retain, nonatomic) UILabel * label;
@end

