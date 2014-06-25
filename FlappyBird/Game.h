//
//  Game.h
//  FlappyBird
//
//  Created by Freddy Rademeyer on 2014/06/25.
//  Copyright (c) 2014 Freddy Rademeyer. All rights reserved.
//

#import <UIKit/UIKit.h>

int BirdFlight;

@interface Game : UIViewController
{
    IBOutlet UIImageView *Bird;
    IBOutlet UIButton *StartGame;
    
    NSTimer *BirdMovement;
}

-(IBAction)StartGame:(id)sender;
-(void)BirdMoving;

@end
