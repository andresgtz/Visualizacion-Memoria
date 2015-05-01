//
//  Cap01_MemRAM.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/15/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Cap01_MemRAM_2.h"
#import "Cap01_MemRAM.h"
#import "Scene00.h"
#import "Capitulos.h"

@implementation Cap01_MemRAM_2
{
    //footer
    SKSpriteNode *leftButton;
    //SKSpriteNode *rightButton;
    SKSpriteNode *startButton;
    UITextView *textView;
    SKSpriteNode *diagrama;
}


-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        
        self.backgroundColor=[UIColor colorWithRed:(248.0f/255.0) green:(241.0f/255.0) blue:(226.0f/255.0) alpha:1.0f];
        
        [self setUpFooter];
        [self setUpInitialText];
        [self setUpImages];
        
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
    /*
    rightButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_right"];
    rightButton.position = CGPointMake(self.size.width/2 + 470, 38);
    [self addChild:rightButton];
    */
    startButton = [SKSpriteNode spriteNodeWithImageNamed:@"start_2"];
    startButton.position = CGPointMake(self.size.width/2 - 20 , 38);
    [self addChild:startButton];
    
}
-(void)setUpInitialText
{
    SKLabelNode *contenido = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    contenido.text = @"Memoria RAM";
    contenido.fontSize = 36.0;
    contenido.fontColor = [UIColor blackColor];
    contenido.position = CGPointMake(500, 600);
    [self addChild:contenido];
    
    SKLabelNode *pag = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    pag.text = @"2/2";
    pag.fontSize = 36.0;
    pag.fontColor = [UIColor blackColor];
    pag.position = CGPointMake(self.size.width - 50, 100);
    [self addChild:pag];
}

-(void)setUpImages{
    
    diagrama = [SKSpriteNode spriteNodeWithImageNamed:@"diagrama_ram"];
    diagrama.position = CGPointMake(500,200);
    
    [self addChild:diagrama];
    
    
    
}


- (void)didMoveToView:(SKView *)view
{
    textView = [[UITextView alloc] initWithFrame:CGRectMake(self.size.width/2, self.size.height/2+20, 700, 400)];
    textView.editable = NO;
    textView.center = self.view.center;
    textView.textColor = [UIColor blackColor];
    textView.font = [UIFont systemFontOfSize:17.0];
    textView.backgroundColor = [UIColor colorWithRed:(248.0f/255.0) green:(241.0f/255.0) blue:(226.0f/255.0) alpha:0.0f];
    textView.text = @"Una memoria RAM tiene como entradas; un bus de direcciones, para especificar la palabra con la cual se desea trabajar, y dos líneas de control; un para habilitar o deshabilitar la memoria, llamada selector de circuito o habilitador del circuito y la otra para indicar si se desea realizar una lectura o una escritura llamada R/W (del inglés Read/Write, se usa W para indicar que la operación de escritura se realiza cuando en esta línea se tiene un cero. ). Además cuenta con un bus de datos el cual es normalmente bidireccional, se comporta como bus de entrada en la operación de escritura y como bus de salida en las operación de lectura. La principal razón de este bus bidireccional es reducir el número de conexiones externas en el circuito integrado. La figura 18.1 ejemplifica una memoria RAM de n líneas en el bus de dirección y de m líneas en el bus de datos.";
    
    
    [self.scene.view addSubview:textView];
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationCurveEaseInOut  animations:^{
        textView.alpha = 1.0f;
        
    }completion: nil];
    
    
}

- (void)willMoveFromView:(SKView *)view
{
    [super willMoveFromView:view];
    [textView removeFromSuperview];
    
}

#pragma mark -
#pragma mark Additional Scene Setup (sprites and such)

- (void)setupBotones
{
    
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
        if([startButton containsPoint:location])
        {
            Scene00 *scene = [[Scene00 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
            [self.view presentScene:scene transition:sceneTransition];
        }else if([leftButton containsPoint:location]){
            Cap01_MemRAM *scene = [[Cap01_MemRAM alloc] initWithSize:self.size];
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
