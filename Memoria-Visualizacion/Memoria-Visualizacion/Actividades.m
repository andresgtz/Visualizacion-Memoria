//
//  Actividades.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/15/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scene00.h"
#import "Capitulos.h"
#import "Actividades.h"
@import AVFoundation;

@implementation Actividades


-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"background_main"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.size = self.frame.size;
        
        [self addChild:background];
        [self setupBotones];
    }
    return self;
}

-(void)setUpFooter
{
    SKSpriteNode *footer = [SKSpriteNode spriteNodeWithImageNamed:@"footer"];
    footer.position = CGPointMake(0,0);
    [self addChild:footer];
    
    SKSpriteNode *leftButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_left"];
    leftButton.position = CGPointMake(0,0);
    [self addChild:leftButton];
    
    SKSpriteNode *rightButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_right"];
    rightButton.position = CGPointMake(0,0);
    [self addChild:rightButton];
    
    SKSpriteNode *startButton = [SKSpriteNode spriteNodeWithImageNamed:@"start"];
    startButton.position = CGPointMake(0,0);
    [self addChild:startButton];
    
}

- (void)willMoveFromView:(SKView *)view
{
    
}

#pragma mark -
#pragma mark Additional Scene Setup (sprites and such)

- (void)setupBotones
{
    SKSpriteNode *titulo = [SKSpriteNode spriteNodeWithImageNamed:@"titulo_memoria"];
    titulo.position = CGPointMake(500,500);
    [self addChild:titulo];
    
    SKSpriteNode *cap = [SKSpriteNode spriteNodeWithImageNamed:@"capitulos"];
    cap.position = CGPointMake(250,200);
    [self addChild:cap];
    
    SKSpriteNode *act = [SKSpriteNode spriteNodeWithImageNamed:@"actividades"];
    act.position = CGPointMake(750,200);
    [self addChild:act];
}


- (void)setUpSoundButton
{
    
    
}

#pragma mark -
#pragma mark Code For Sound & Ambiance

- (void)playBackgroundMusic:(NSString *)filename
{
    
}

- (void)showSoundButtonForTogglePosition:(BOOL )togglePosition
{
    
}

#pragma mark -
#pragma mark Touch Events

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //boton de next scene
    
    //SKNode *startButton = [self childNodeWithName:@"buttonStart"];
    
    /* Called when a touch begins */
    for (UITouch *touch in touches)
    {
        CGPoint location = [touch locationInNode:self];
        /*
         if([_btnSound containsPoint:location])
         {
         
         Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
         SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
         [self.view presentScene:scene transition:sceneTransition];
         }
         //Si le pican al boton de start
         else if([startButton containsPoint:location])
         {
         
         
         Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
         SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
         [self.view presentScene:scene transition:sceneTransition];
         }
         */
    }
}

#pragma mark -
#pragma mark Game Loop

-(void)update:(CFTimeInterval)currentTime
{
    
}


@end