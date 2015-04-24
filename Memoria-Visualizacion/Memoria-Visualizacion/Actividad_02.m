//
//  Actividad_02.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/23/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Actividad_02.h"
#import "Scene00.h"

@implementation Actividad_02
{
    SKSpriteNode *btn_act1;
    SKSpriteNode *btn_act2;
    SKSpriteNode *btn_act3;
    //footer
    SKSpriteNode *leftButton;
    SKSpriteNode *rightButton;
    SKSpriteNode *startButton;
    NSMutableArray *_wayPoints;
    //http://www.raywenderlich.com/61289/how-to-make-a-line-drawing-game-with-sprite-kit
    
}

-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        
        self.backgroundColor = [SKColor whiteColor];
        
        [self setUpFooter];
        //[self setupBotones];
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
    
    startButton = [SKSpriteNode spriteNodeWithImageNamed:@"start"];
    startButton.position = CGPointMake(self.size.width/2 - 20 , 38);
    [self addChild:startButton];
    
}
- (void)setupBotones
{
    
    
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
        
    }
}

#pragma mark -
#pragma mark Game Loop

-(void)update:(CFTimeInterval)currentTime
{

}

@end
