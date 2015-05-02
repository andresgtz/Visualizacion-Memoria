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
#import "Cap01_Intro.h"
#import "Cap01_MemRAM.h"
#import "Cap01_CelBin.h"
#import "Cap01_MemRAM_NxM.h"
#import "Cap01_SistMemoria.h"
#import "Cap01_Resumen.h"
@import AVFoundation;

@implementation Capitulos
{
    SKSpriteNode *btn_intro;
    SKSpriteNode *btn_mem_ram;
    SKSpriteNode *btn_cel_bin;
    SKSpriteNode *btn_mem_nm;
    SKSpriteNode *btn_sis_mem;
    SKSpriteNode *btn_resumen;
    
    //footer
    //SKSpriteNode *leftButton;
    //SKSpriteNode *rightButton;
    SKSpriteNode *startButton;
    
}

#pragma mark -
#pragma mark Scene Setup and Initialize

-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"Background_2"];
        background.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
        background.size = self.frame.size;
        
        [self addChild:background];
        [self setupBotones];
        [self setUpFooter];
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
    
    btn_intro = [SKSpriteNode spriteNodeWithImageNamed:@"Introduccion_blue"];
    btn_intro.position = CGPointMake(500,650);
    [self addChild:btn_intro];
    
    btn_mem_ram = [SKSpriteNode spriteNodeWithImageNamed:@"Memoria_RAM_blue"];
    btn_mem_ram.position = CGPointMake(500,550);
    [self addChild:btn_mem_ram];
    
    btn_cel_bin = [SKSpriteNode spriteNodeWithImageNamed:@"Celda_Binaria_blue"];
    btn_cel_bin.position = CGPointMake(500,450);
    [self addChild:btn_cel_bin];
    
    btn_mem_nm = [SKSpriteNode spriteNodeWithImageNamed:@"Memoria_nxm_blue"];
    btn_mem_nm.position = CGPointMake(500,350);
    [self addChild:btn_mem_nm];
    
    btn_sis_mem = [SKSpriteNode spriteNodeWithImageNamed:@"Sistema_memoria_blue"];
    btn_sis_mem.position = CGPointMake(500,250);
    [self addChild:btn_sis_mem];
    
    btn_resumen = [SKSpriteNode spriteNodeWithImageNamed:@"Resumen_blue"];
    btn_resumen.position = CGPointMake(500,150);
    [self addChild:btn_resumen];
    
    
}

-(void)setUpFooter
{
    SKSpriteNode *footer = [SKSpriteNode spriteNodeWithImageNamed:@"footer"];
    footer.position = CGPointMake(self.size.width/2, 38);
    [self addChild:footer];
    
    /*
    leftButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_left"];
    leftButton.position = CGPointMake(38, 38);
    [self addChild:leftButton];
    
    rightButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_right"];
    rightButton.position = CGPointMake(self.size.width/2 + 470, 38);
    [self addChild:rightButton];
    */
     
    startButton = [SKSpriteNode spriteNodeWithImageNamed:@"start_2"];
    startButton.position = CGPointMake(self.size.width/2 - 20 , 38);
    [self addChild:startButton];
    
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
    

    
    /* Called when a touch begins */
    for (UITouch *touch in touches)
    {
        CGPoint location = [touch locationInNode:self];
        
        //scene introduccion
         if([btn_intro containsPoint:location])
         {
         Cap01_Intro *scene = [[Cap01_Intro alloc] initWithSize:self.size];
         SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
         [self.view presentScene:scene transition:sceneTransition];
         }
        //scene memoria ram
         else if([btn_mem_ram containsPoint:location])
         {
             Cap01_MemRAM *scene = [[Cap01_MemRAM alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
             [self.view presentScene:scene transition:sceneTransition];
         }
        //scene celdas binarias
         else if([btn_cel_bin containsPoint:location])
         {
             Cap01_CelBin *scene = [[Cap01_CelBin alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
             [self.view presentScene:scene transition:sceneTransition];
         }
        //scene memorias nxm
         else if([btn_mem_nm containsPoint:location])
         {
             Cap01_MemRAM_NxM *scene = [[Cap01_MemRAM_NxM alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
             [self.view presentScene:scene transition:sceneTransition];
         }
        //scene sistema memorias
         else if([btn_sis_mem containsPoint:location])
         {
             Cap01_SistMemoria *scene = [[Cap01_SistMemoria alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
             [self.view presentScene:scene transition:sceneTransition];
         }
        //scene resumen
         else if([btn_resumen containsPoint:location])
         {
             Cap01_Resumen *scene = [[Cap01_Resumen alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
             [self.view presentScene:scene transition:sceneTransition];
         }
         else if([startButton containsPoint:location])
         {
             Scene00 *scene = [[Scene00 alloc] initWithSize:self.size];
             SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
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
