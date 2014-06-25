//
//  Game.m
//  FlappyBird
//
//  Created by Freddy Rademeyer on 2014/06/25.
//  Copyright (c) 2014 Freddy Rademeyer. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)StartGame:(id)sender
{
    
    StartGame.hidden = YES;
    BirdMovement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector : @selector(BirdMoving) userInfo:nil repeats:YES];
    
}

-(void)BirdMoving
{
    
    Bird.center = CGPointMake(Bird.center.x, Bird.center.y - BirdFlight);
    
    BirdFlight = BirdFlight - 5;
    
    if (BirdFlight < -15)
    {
        BirdFlight = -15;
    }
    
    if (BirdFlight > 0)
    {
        
        Bird.image = [UIImage imageNamed:@"BirdUp.png"];
        
    } else Bird.image = [UIImage imageNamed:@"BirdDown.png"];
        
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    BirdFlight = 30;
    
    
}


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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
