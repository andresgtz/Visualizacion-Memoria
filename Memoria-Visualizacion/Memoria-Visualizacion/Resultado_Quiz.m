//
//  Resultado_Quiz.m
//  Memoria-Visualizacion
//
//  Created by Jesus on 5/1/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Resultado_Quiz.h"
#import "Scene00.h"

@implementation Resultado_Quiz
{
    
    //footer
    SKSpriteNode *leftButton;
    SKSpriteNode *rightButton;
    SKSpriteNode *startButton;
    
    //PLIST
    
    NSArray *paths;
    NSString *documentsDirectory;
    NSString *path;
    
}

-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        
        self.backgroundColor=[UIColor colorWithRed:(248.0f/255.0) green:(241.0f/255.0) blue:(226.0f/255.0) alpha:1.0f];

        
        [self setUpFooter];
        [self setUpPlist];
        [self setupBotones];
        [self setUpInitialText];
        
    }
    return self;
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

-(void)setUpPlist
{
    NSError *error;
    paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES); //1
    NSString *basePath = ([paths count] > 0) ? [paths objectAtIndex:0] : nil;
    path = [basePath stringByAppendingPathComponent:@"Quiz.plist"];
    
    
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if (![fileManager fileExistsAtPath: path]) //4
    {
        NSString *bundle = [[NSBundle mainBundle] pathForResource:@"Quiz" ofType:@"plist"]; //5
        
        [fileManager copyItemAtPath:bundle toPath: path error:&error]; //6
    }
    
}

- (void)setupBotones
{
    
    
}
-(void)setUpInitialText
{
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    label.text = @"Resultado Quiz";
    label.fontSize = 36.0;
    label.fontColor = [UIColor blackColor];
    label.position = CGPointMake(500, 600);
    [self addChild:label];
    
    //resultado quiz
    NSMutableDictionary *savedStock = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
    
    //load from savedStock example int value
    int value;
    value = [[savedStock objectForKey:@"Pregunta_1"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_2"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_3"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_4"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_5"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_6"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_7"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_8"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_9"] intValue];
    value += [[savedStock objectForKey:@"Pregunta_10"] intValue];
    
    NSString *resultado = [NSString stringWithFormat:@"%d",value];

    
    SKLabelNode *calificacion = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    calificacion.text = [NSString stringWithFormat:@"%@/4", resultado];
    calificacion.fontSize = 16.0;
    calificacion.fontColor = [UIColor blackColor];
    calificacion.position = CGPointMake(500, 550);
    [self addChild:calificacion];
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