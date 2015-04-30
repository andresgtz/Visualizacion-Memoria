//
//  Cap01_SistMemoria_3.m
//  Memoria-Visualizacion
//
//  Created by Jesus on 4/30/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Cap01_SistMemoria_3.h"
#import "Cap01_SistMemoria_2.h"
#import "Scene00.h"
#import "Capitulos.h"



@implementation Cap01_SistMemoria_3
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
    startButton = [SKSpriteNode spriteNodeWithImageNamed:@"start"];
    startButton.position = CGPointMake(self.size.width/2 - 20 , 38);
    [self addChild:startButton];
    
}
-(void)setUpInitialText
{
    SKLabelNode *contenido = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    contenido.text = @"Sistemas de memoria";
    contenido.fontSize = 36.0;
    contenido.fontColor = [UIColor blackColor];
    contenido.position = CGPointMake(500, 600);
    [self addChild:contenido];
    
    SKLabelNode *pag = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    pag.text = @"3/3";
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
    textView.text = @"Al diseñar un sistema de memoria para una computadora se debe de conocer exactamente el tamaño de la memoria que se requiere, que porción o porciones de ésta será RAM, que porción o porciones será ROM y con que circuitos de memoria RAM y ROM se quiere diseñar. Para facilitar el diseño de un sistema de memoria se forma un mapa de direcciones de memoria donde por medio de una tabla se especifica para cada circuito de memoria el conjunto de direcciones de memoria que se le asignan. Normalmente se hace referencia a las direcciones por bloques, iniciando con el bloque cero. El tamaño de cada uno de los bloques puede ser de K (de Kilo), M (de Mega), G (de Giga) o de T (de Tera). Para mostrar un ejemplo particular, considérese el diseño del siguiente sistema de memoria. Se quiere diseñar un sistema de memoria de 64K bytes, donde del K0 al K7 y del K24 al K31 son de memoria ROM y el resto es de memoria RAM. Se tienen dos ROM de 8k bytes (ROM-1 y ROM-2), una memoria RAM de 16k bytes (RAM-1) y ocho memorias RAM de 32k nibble, un nibble son 4 bits (RAM-2 y RAM-3). Todos los circuitos cuentan con dos líneas de selección y sus buses de datos son de tres estados. El bus de direcciones para este sistema de memoria es de 16 líneas, para poder direccionar los 64K (216) palabras de la memoria. Las líneas más significativas son usadas para seleccionar a cada uno de los circuitos de memoria y las menos significativas son usadas para seleccionar a una palabra dentro de la memoria.";
    
    
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
            Cap01_SistMemoria_2 *scene = [[Cap01_SistMemoria_2 alloc] initWithSize:self.size];
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