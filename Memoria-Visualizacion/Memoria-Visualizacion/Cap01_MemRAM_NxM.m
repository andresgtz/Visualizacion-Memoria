//
//  Cap01_MemRAM_NxM.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/15/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Cap01_MemRAM_NxM.h"
#import "Scene00.h"
#import "Capitulos.h"
#import "Cap01_MemRAM_NxM_2.h"


@implementation Cap01_MemRAM_NxM
{
    //footer
    SKSpriteNode *leftButton;
    SKSpriteNode *rightButton;
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
    
    rightButton = [SKSpriteNode spriteNodeWithImageNamed:@"button_right"];
    rightButton.position = CGPointMake(self.size.width/2 + 470, 38);
    [self addChild:rightButton];
    
    startButton = [SKSpriteNode spriteNodeWithImageNamed:@"start_2"];
    startButton.position = CGPointMake(self.size.width/2 - 20 , 38);
    [self addChild:startButton];
    
}
-(void)setUpInitialText
{
    SKLabelNode *contenido = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    contenido.text = @"Memoria RAM NxM";
    contenido.fontSize = 36.0;
    contenido.fontColor = [UIColor blackColor];
    contenido.position = CGPointMake(500, 600);
    [self addChild:contenido];
    
    SKLabelNode *pag = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    pag.text = @"1/2";
    pag.fontSize = 36.0;
    pag.fontColor = [UIColor blackColor];
    pag.position = CGPointMake(self.size.width - 50, 100);
    [self addChild:pag];
}

-(void)setUpImages{
    
    diagrama = [SKSpriteNode spriteNodeWithImageNamed:@"diagrama_nm"];
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
    textView.text = @"La construcción interna de una memoria RAM de 2n palabras de m bits básicamente consta de un decodificador de n X 2n y de 2n X m celdas binarias. La construcción lógica de un RAM pequeño se muestra en la figura 18.4. Esta memoria cuenta con 4 palabras de 4 bits. Para seleccionar una de las cuatro palabras se requiere de un bus de direcciones de 2 líneas, las cuales entran al decodificador. Al estar habilitado el decodificador seleccionará las celdas binarias de una de las cuatro palabras, dependiendo del contenido en el bus de direcciones. Si la operación que se desea realizar es una escritura, se pone en la línea de R/W un 0 y las celdas binarias seleccionadas guardaran los bits que se encuentra en el bus de entrada. Para realizar una operación de lectura, se pone en la línea de R/W un 1, lo que hace que los bits de las celdas binarias seleccionadas pasen por los bloques ORs al bus de salida. Las celdas binarias de las palabras no seleccionadas mantienen su contenido.";
    
    
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
        }else if([rightButton containsPoint:location]){
            Cap01_MemRAM_NxM_2 *scene = [[Cap01_MemRAM_NxM_2 alloc] initWithSize:self.size];
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