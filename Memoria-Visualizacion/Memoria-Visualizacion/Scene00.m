//
//  Scene00.m
//  Visualizacion-Memoria
//
//  Created by Enrique O Hernandez on 4/14/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

//
//  Scene00.m
//  TheSeasons
//
//  Created by Tammy Coron on 9/15/13.
//  Copyright (c) 2013 Tammy Coron. All rights reserved.
//

#import "Scene00.h"
#import "Capitulos.h"
#import "Actividades.h"
@import AVFoundation;

@implementation Scene00
{
    SKSpriteNode *capitulos;
    SKSpriteNode *actividades;
}

#pragma mark -
#pragma mark Scene Setup and Initialize

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

- (void)willMoveFromView:(SKView *)view
{
    
}

#pragma mark -
#pragma mark Additional Scene Setup (sprites and such)

- (void)setupBotones
{
    SKSpriteNode *titulo = [SKSpriteNode spriteNodeWithImageNamed:@"titulo_memoria"];
    titulo.position = CGPointMake(520,400);
    [self addChild:titulo];
    
    capitulos = [SKSpriteNode spriteNodeWithImageNamed:@"capitulos"];
    capitulos.position = CGPointMake(250,200);
    [self addChild:capitulos];
    
    actividades = [SKSpriteNode spriteNodeWithImageNamed:@"actividades"];
    actividades.position = CGPointMake(750,200);
    [self addChild:actividades];
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
        
        if([actividades containsPoint:location])
        {
            
            Actividades *scene = [[Actividades alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
        }
        //Si le pican al boton de start
        else if([capitulos containsPoint:location])
        {
            
            
            Capitulos *scene = [[Capitulos alloc] initWithSize:self.size];
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
