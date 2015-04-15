//
//  Capitulos.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/15/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Scene00.h"
#import "Capitulos.h"
@import AVFoundation;

@implementation Capitulos
{
    
}

#pragma mark -
#pragma mark Scene Setup and Initialize

-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        /*
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"background_main.jpg"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.size = self.frame.size;
        
        [self addChild:background];
        
         
         */
        self.backgroundColor = [SKColor grayColor];
        [self setupBotones];
    }
    return self;
}

- (void)willMoveFromView:(SKView *)view
{
    
}

#pragma mark -
#pragma mark Additional Scene Setup (sprites and such)

- (void)setupBotones
{
    
    SKSpriteNode *btn_intro = [SKSpriteNode spriteNodeWithImageNamed:@"introduccion"];
    btn_intro.position = CGPointMake(50,500);
    [self addChild:btn_intro];
    
    SKSpriteNode *btn_mem_ram = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_ram"];
    btn_mem_ram.position = CGPointMake(50,400);
    [self addChild:btn_mem_ram];
    
    SKSpriteNode *btn_cel_bin = [SKSpriteNode spriteNodeWithImageNamed:@"celda_binaria"];
    btn_cel_bin.position = CGPointMake(50,300);
    [self addChild:btn_cel_bin];
    
    SKSpriteNode *btn_mem_nm = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_nxm"];
    btn_mem_nm.position = CGPointMake(50,200);
    [self addChild:btn_mem_nm];
    
    SKSpriteNode *btn_sis_mem = [SKSpriteNode spriteNodeWithImageNamed:@"sistema_memoria"];
    btn_sis_mem.position = CGPointMake(50,200);
    [self addChild:btn_sis_mem];
    
    SKSpriteNode *btn_resumen = [SKSpriteNode spriteNodeWithImageNamed:@"resumen"];
    btn_resumen.position = CGPointMake(50,200);
    [self addChild:btn_resumen];
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
    
    SKNode *btn_intro = [self childNodeWithName:@"btn_intro"];
    SKNode *btn_mem_ram = [self childNodeWithName:@"btn_mem_ram"];
    SKNode *btn_celda_binaria = [self childNodeWithName:@"btn_cel_bin"];
    SKNode *btn_mem_nxm = [self childNodeWithName:@"btn_mem_nm"];
    SKNode *btn_sis_mem = [self childNodeWithName:@"btn_sis_mem"];
    SKNode *btn_resumen = [self childNodeWithName:@"btn_resumen"];
    
    /* Called when a touch begins */
    for (UITouch *touch in touches)
    {
        CGPoint location = [touch locationInNode:self];
        
         if([btnIntro containsPoint:location])
         {
         
         Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
         SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
         [self.view presentScene:scene transition:sceneTransition];
         }
         //Si le pican al boton de start
         else if([btn_mem_ram containsPoint:location])
         {
         
         
         Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
         SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
         [self.view presentScene:scene transition:sceneTransition];
         }
         else if([btn_mem_ram containsPoint:location])
         {
             
             
             Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
             [self.view presentScene:scene transition:sceneTransition];
         }
         else if([btn_celda_binaria containsPoint:location])
         {
             
             
             Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
             [self.view presentScene:scene transition:sceneTransition];
         }
         else if([btn_mem_nxm containsPoint:location])
         {
             
             
             Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
             [self.view presentScene:scene transition:sceneTransition];
         }
         else if([btn_sis_mem containsPoint:location])
         {
             
             
             Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
             [self.view presentScene:scene transition:sceneTransition];
         }
         else if([btn_resumen containsPoint:location])
         {
             
             
             Scene01 *scene = [[Scene01 alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
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
