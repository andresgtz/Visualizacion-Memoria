//
//  Quizz.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/30/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Pregunta_2.h"
#import "Scene00.h"
#import "Pregunta_3.h"

@implementation Pregunta_2
{
    SKSpriteNode *respuestaIncorrecta1;
    SKSpriteNode *respuestaIncorrecta2;
    SKSpriteNode *respuestaIncorrecta3;
    SKSpriteNode *respuestaCorrecta;
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
    respuestaCorrecta = [SKSpriteNode spriteNodeWithImageNamed:@"introduccion"];
    respuestaCorrecta.position = CGPointMake(300,350);
    [self addChild:respuestaCorrecta];
    
    respuestaIncorrecta1 = [SKSpriteNode spriteNodeWithImageNamed:@"btn_memoria_ram"];
    respuestaIncorrecta1.position = CGPointMake(300,200);
    [self addChild:respuestaIncorrecta1];
    
    respuestaIncorrecta2 = [SKSpriteNode spriteNodeWithImageNamed:@"celda_binaria"];
    respuestaIncorrecta2.position = CGPointMake(700,350);
    [self addChild:respuestaIncorrecta2];
    
    respuestaIncorrecta3 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_nxm"];
    respuestaIncorrecta3.position = CGPointMake(700,200);
    [self addChild:respuestaIncorrecta3];
    
    
    
}
-(void)setUpInitialText
{
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    label.text = @"Pregunta 2";
    label.fontSize = 36.0;
    label.fontColor = [UIColor blackColor];
    label.position = CGPointMake(500, 600);
    [self addChild:label];
    
    SKLabelNode *pregunta = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    pregunta.text = @"La memoria RAM es volatil.";
    pregunta.fontSize = 16.0;
    pregunta.fontColor = [UIColor blackColor];
    pregunta.position = CGPointMake(500, 550);
    [self addChild:pregunta];
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
        }else if ([respuestaCorrecta containsPoint:location]){
            //Escribir respuesta correcta en plist
            NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
            int value = 1;
            [data setObject:[NSNumber numberWithInt:value] forKey:@"Pregunta_2"];
            [data writeToFile: path atomically:YES];
            
            //cambio de scene (pregunta)
            Pregunta_3 *scene = [[Pregunta_3 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
            
        }else if ([respuestaIncorrecta1 containsPoint:location]){
            //Escribir respuesta incorrecta en plist
            NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
            [data setObject:[NSNumber numberWithInt:0] forKey:@"Pregunta_2"];
            [data writeToFile: path atomically:YES];
            
            //cambio de scene (pregunta)
            Pregunta_3 *scene = [[Pregunta_3 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
            
        }else if ([respuestaIncorrecta2 containsPoint:location]){
            //Escribir respuesta incorrecta en plist
            NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
            [data setObject:[NSNumber numberWithInt:0] forKey:@"Pregunta_2"];
            [data writeToFile: path atomically:YES];
            
            //cambio de scene (pregunta)
            Pregunta_3 *scene = [[Pregunta_3 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
            
        }else if ([respuestaIncorrecta3 containsPoint:location]){
            //Escribir respuesta incorrecta en plist
            NSMutableDictionary *data = [[NSMutableDictionary alloc] initWithContentsOfFile: path];
            [data setObject:[NSNumber numberWithInt:0] forKey:@"Pregunta_2"];
            [data writeToFile: path atomically:YES];
            
            //cambio de scene (pregunta)
            Pregunta_3 *scene = [[Pregunta_3 alloc] initWithSize:self.size];
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