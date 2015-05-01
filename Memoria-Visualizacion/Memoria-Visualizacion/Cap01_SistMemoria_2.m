//
//  Cap01_SistMemoria_2.m
//  
//
//  Created by Jesus on 4/30/15.
//
//

#import "Cap01_SistMemoria_2.h"
#import "Scene00.h"
#import "Capitulos.h"
#import "Cap01_SistMemoria.h"
#import "Cap01_SistMemoria_3.h"


@implementation Cap01_SistMemoria_2
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
    contenido.text = @"Sistemas de memoria";
    contenido.fontSize = 36.0;
    contenido.fontColor = [UIColor blackColor];
    contenido.position = CGPointMake(500, 600);
    [self addChild:contenido];
    
    SKLabelNode *pag = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    pag.text = @"2/3";
    pag.fontSize = 36.0;
    pag.fontColor = [UIColor blackColor];
    pag.position = CGPointMake(self.size.width - 50, 100);
    [self addChild:pag];
}

-(void)setUpImages{
    
    diagrama = [SKSpriteNode spriteNodeWithImageNamed:@"diagrama_sis2"];
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
    textView.text = @"La línea de dirección más significativa a10 determina cual de los dos circuitos se selecciona, si esta línea vale cero selecciona el circuito superior, el segundo K de memoria se encuentra en el circuito inferior ya que éste se selecciona cuando a10 vale uno. De las dos líneas de selección solo se necesita una de ellas, la otra se fija a uno o a cero según el caso. Recuerda que el bus de datos es bidirecional y de tres estados por lo cual se pueden juntar las líneas correspondientes en cada uno de circuitos sin producir un corto, ya que solo uno de éstos puede seleccionar a la vez, lo que hace que el otro bus se encuentre en su tercer estado. La figura 18.12 muestra como se pueden interconectar dos circuitos de memoria de 1K palabras de 8 bits para formar una memoria de 1K palabras de 16 bits.";
    
    
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
            Cap01_SistMemoria *scene = [[Cap01_SistMemoria alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:0];
            [self.view presentScene:scene transition:sceneTransition];
        }else if ([rightButton containsPoint:location]){
            Cap01_SistMemoria_3 *scene = [[Cap01_SistMemoria_3 alloc] initWithSize:self.size];
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