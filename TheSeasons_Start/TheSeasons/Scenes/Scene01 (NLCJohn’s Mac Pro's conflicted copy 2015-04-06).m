//
//  Scene01.m
//  TheSeasons
//
//  Created by Tammy Coron on 9/13/13.
//  Copyright (c) 2013 Tammy Coron. All rights reserved.
//

#import "Scene01.h"

@import AVFoundation;

@interface Scene01 ()


@end

@implementation Scene01
{
    AVAudioPlayer *_backgroundMusicPlayer;
    SKSpriteNode *_btnSound;
    BOOL _soundOff;
}

#pragma mark -
#pragma mark Scene Setup and Initialize

-(id)initWithSize:(CGSize)size
{
    if (self = [super initWithSize:size])
    {
        /* set up your scene here */
        
        /* set up Sound */
        
        _soundOff = [[NSUserDefaults standardUserDefaults] boolForKey:@"pref_sound"];
        [self playBackgroundMusic:@"pg01_bgMusic.mp3"];
        
        /* add background image */
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"bg_pg01"];
        background.anchorPoint = CGPointZero;
        background.position = CGPointZero;
        
        [self addChild:background];
        
        /* additional setup */
        
    }
    return self;
}

- (void)willMoveFromView:(SKView *)view
{
    
}

#pragma mark -
#pragma mark Standard Scene Setup

- (void)setUpText
{
    
}

- (void)readText
{
    
}

- (void)setUpFooter
{
    
}

#pragma mark -
#pragma mark Additional Scene Setup (sprites and such)

- (void)setUpMainScene
{
    
}

- (void)setUpMainCharacter
{
    
}

- (void)setUpMainCharacterAnimation
{
    
}

- (void)setUpHat
{
    
}

#pragma mark -
#pragma mark Code For Sound & Ambiance

- (void)playBackgroundMusic:(NSString *)filename
{
    NSError *error;
    NSURL *backgroundMusicURL = [[NSBundle mainBundle] URLForResource:filename withExtension:nil];
    _backgroundMusicPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:backgroundMusicURL error:&error];
    _backgroundMusicPlayer.numberOfLoops = -1;
    _backgroundMusicPlayer.volume = .50;
    [_backgroundMusicPlayer prepareToPlay];
}

- (void)showSoundButtonForTogglePosition:(BOOL )togglePosition
{
    // NSLog(@"togglePosition: %i", togglePosition);
    
    if (togglePosition)
    {
        _btnSound.texture = [SKTexture textureWithImageNamed:@"button_sound_on"];
        
        _soundOff = NO;
        [[NSUserDefaults standardUserDefaults] setBool:NO forKey:@"pref_sound"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [_backgroundMusicPlayer play];
    }
    else
    {
        _btnSound.texture = [SKTexture textureWithImageNamed:@"button_sound_off"];
        
        _soundOff = YES;
        [[NSUserDefaults standardUserDefaults] setBool:YES forKey:@"pref_sound"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [_backgroundMusicPlayer stop];
    }
}

#pragma mark -
#pragma mark Touch Events

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    /* Called when a touch begins */
    for (UITouch *touch in touches)
    {
        CGPoint location = [touch locationInNode:self];
        // NSLog(@"** TOUCH LOCATION ** \nx: %f / y: %f", location.x, location.y);
    
        if([_btnSound containsPoint:location])
        {
            // NSLog(@"xxxxxxxxxxxxxxxxxxx sound toggle");
      
            [self showSoundButtonForTogglePosition:_soundOff];
        }
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    
}

#pragma mark -
#pragma mark Game Loop

-(void)update:(CFTimeInterval)currentTime
{
    
}

@end
