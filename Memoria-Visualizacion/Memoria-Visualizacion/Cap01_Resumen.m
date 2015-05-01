//
//  Cap01_Resumen.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/15/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Cap01_Resumen.h"
#import "Scene00.h"
#import "Capitulos.h"



@implementation Cap01_Resumen
{
    //footer
    SKSpriteNode *leftButton;
    //SKSpriteNode *rightButton;
    SKSpriteNode *startButton;
    UITextView *textView;
   
}


-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        
        self.backgroundColor=[UIColor colorWithRed:(248.0f/255.0) green:(241.0f/255.0) blue:(226.0f/255.0) alpha:1.0f];
        
        [self setUpFooter];
        [self setUpInitialText];
        
        
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
    contenido.text = @"Resumen";
    contenido.fontSize = 36.0;
    contenido.fontColor = [UIColor blackColor];
    contenido.position = CGPointMake(500, 600);
    [self addChild:contenido];
    
    SKLabelNode *pag = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    pag.text = @"1/1";
    pag.fontSize = 36.0;
    pag.fontColor = [UIColor blackColor];
    pag.position = CGPointMake(self.size.width - 50, 100);
    [self addChild:pag];
}



- (void)didMoveToView:(SKView *)view
{
    textView = [[UITextView alloc] initWithFrame:CGRectMake(self.size.width/2, self.size.height/2+20, 700, 400)];
    textView.editable = NO;
    textView.center = self.view.center;
    textView.textColor = [UIColor blackColor];
    textView.font = [UIFont systemFontOfSize:17.0];
    textView.backgroundColor = [UIColor colorWithRed:(248.0f/255.0) green:(241.0f/255.0) blue:(226.0f/255.0) alpha:0.0f];
    textView.text = @"La memoria de una computadora está formada por una combinación de memorias RAM y ROM. Este último tipo de memorias se había presentado en capítulos anteriores, no así la organización de la memoria RAM. Se presentó la construcción de una unidad simple de memoria RAM a partir de celdas binarias y circuitos lógicos que permiten realizar la lectura y escritura de una dirección de memoria en particular. La mayoría de las unidades de memoria simples contienen palabras de 8 bits. La memoria RAM de una computadora está formada por varias unidades de memoria simples, organizadas de cierta manera para formar el sistema de memoria de la computadora. Generalmente, a palabra de memoria de una computadora contiene un múltiplo de entero de un byte (8 bits). En este capítulo se presenta también como está organizado el sistema de memoria de una computadora.";
    
    
    [self.scene.view addSubview:textView];
    [UIView animateWithDuration:1 delay:0 options:UIViewAnimationCurveEaseInOut  animations:^{
        textView.alpha = 1.0f;
        
    }completion: nil];
    
    
}

- (void)willMoveFromView:(SKView *)view
{
    [textView removeFromSuperview];
    [super willMoveFromView:view];
    
    
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
            Capitulos *scene = [[Capitulos alloc] initWithSize:self.size];
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


