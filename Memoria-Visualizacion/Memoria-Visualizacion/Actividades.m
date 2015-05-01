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
#import "Actividad_01.h"
#import "Actividad_02.h"
#import "Quizz.h"
@import AVFoundation;

@implementation Actividades
{
    SKSpriteNode *btn_act1;
    SKSpriteNode *btn_act2;
    SKSpriteNode *btn_act3;
    SKSpriteNode *quizz;
    //footer
    SKSpriteNode *leftButton;
    SKSpriteNode *rightButton;
    SKSpriteNode *startButton;
}

-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        
       // self.backgroundColor = [SKColor blueColor];
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"Background_2"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.size = self.frame.size;
        
        [self addChild:background];
        
        [self setUpFooter];
        [self setupBotones];
        //[self setUpInitialText];
        
    }
    return self;
}

-(void)setUpFooter
{
    SKSpriteNode *footer = [SKSpriteNode spriteNodeWithImageNamed:@"footer"];
    footer.position = CGPointMake(self.size.width/2, 38);
    [self addChild:footer];
    
    leftButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_left"];
    leftButton.position = CGPointMake(38, 38);
    [self addChild:leftButton];
    
    rightButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_right"];
    rightButton.position = CGPointMake(self.size.width/2 + 470, 38);
    [self addChild:rightButton];
    
    startButton = [SKSpriteNode spriteNodeWithImageNamed:@"start_2"];
    startButton.position = CGPointMake(self.size.width/2 - 20 , 38);
    [self addChild:startButton];
    
}
- (void)setupBotones
{
    
    btn_act1 = [SKSpriteNode spriteNodeWithImageNamed:@"Actividad_1_blue"];
    btn_act1.position = CGPointMake(500,650);
    [self addChild:btn_act1];
    
    btn_act2 = [SKSpriteNode spriteNodeWithImageNamed:@"Actividad_2_blue"];
    btn_act2.position = CGPointMake(500,500);
    [self addChild:btn_act2];
    
    btn_act3 = [SKSpriteNode spriteNodeWithImageNamed:@"Actividad_3_blue"];
    btn_act3.position = CGPointMake(500,350);
    [self addChild:btn_act3];
    
    quizz = [SKSpriteNode spriteNodeWithImageNamed:@"quizz"];
    quizz.position = CGPointMake(500,200);
    [self addChild:quizz];
   
    
    
}
-(void)setUpInitialText
{
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    label.text = @"Actividades!";
    label.fontSize = 20.0;
    label.fontColor = [UIColor whiteColor];
    label.position = CGPointMake(400, 400);
    [self addChild:label];
}

- (void)willMoveFromView:(SKView *)view
{
    
}

#pragma mark -
#pragma mark Additional Scene Setup (sprites and such)

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
        
        if([startButton containsPoint:location])
        {
            Scene00 *scene = [[Scene00 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
        }
        //scene Actividad 1
        else if([btn_act1 containsPoint:location])
        {
            Actividad_01 *scene = [[Actividad_01 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition flipVerticalWithDuration:1]; //[SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
        }
        else if([btn_act2 containsPoint:location])
        {
            Actividad_02 *scene = [[Actividad_02 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition flipVerticalWithDuration:1]; //[SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
        }else if([quizz containsPoint:location])
        {
            Quizz *scene = [[Quizz alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition flipVerticalWithDuration:1]; //[SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
        }
        
    }
}

#pragma mark -
#pragma mark Game Loop

-(void)update:(CFTimeInterval)currentTime
{
    
}


@end