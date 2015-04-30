//
//  Actividad_01.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/22/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "Actividad_01.h"
#import "Scene00.h"
#import "SKTUtils.h"

@implementation Actividad_01
{
    BOOL _gameMode8;
    BOOL _touchDecoder;
    BOOL _touchMemory_1;
    BOOL _touchMemory_2;
    BOOL _touchMemory_3;
    BOOL _touchMemory_4;
    BOOL _touchMemory_5;
    BOOL _touchMemory_6;
    BOOL _touchMemory_7;
    BOOL _touchMemory_8;
    //
    BOOL _inPlace_1;
    BOOL _inPlace_2;
    BOOL _inPlace_3;
    BOOL _inPlace_4;
  
    //
    BOOL _inPlace_5;
    BOOL _inPlace_6;
    BOOL _inPlace_7;
    BOOL _inPlace_8;

    NSInteger _enLugar;

    CGPoint _touchPoint;
    CGPoint _memoryLoc;
    
    //imagenes
    SKSpriteNode *title;
    SKSpriteNode *box;
    SKSpriteNode *mem_box_1;
    SKSpriteNode *mem_box_2;
    SKSpriteNode *mem_box_3;
    SKSpriteNode *mem_box_4;
    SKSpriteNode *mem_box_5;
    SKSpriteNode *mem_box_6;
    SKSpriteNode *mem_box_7;
    SKSpriteNode *mem_box_8;
    SKSpriteNode *mem_1;
    SKSpriteNode *mem_2;
    SKSpriteNode *mem_3;
    SKSpriteNode *mem_4;
    SKSpriteNode *mem_5;
    SKSpriteNode *mem_6;
    SKSpriteNode *mem_7;
    SKSpriteNode *mem_8;
    SKSpriteNode *decoder;
    SKSpriteNode *instructions;
    SKSpriteNode *lineas;
    
    //footer
    SKSpriteNode *leftButton;
    SKSpriteNode *rightButton;
    SKSpriteNode *startButton;
    
    //Lineas1
    SKShapeNode *line1_1;
    SKShapeNode *line1_2;
    SKShapeNode *line1_3;
    SKShapeNode *line1_4;
    
    //segundaLinea
    SKShapeNode *line2_1;
    SKShapeNode *line2_2;
    SKShapeNode *line2_3;
    SKShapeNode *line2_4;
    
    //tercera linea
    SKShapeNode *line3_1;
    SKShapeNode *line3_2;
    SKShapeNode *line3_3;
    SKShapeNode *line3_4;
    
    //cuarta linea
    SKShapeNode *line4_1;
    SKShapeNode *line4_2;
    SKShapeNode *line4_3;
    SKShapeNode *line4_4;
    
    //Quinta linea
    SKShapeNode *line5_1;
    SKShapeNode *line5_2;
    SKShapeNode *line5_3;
    SKShapeNode *line5_4;
    
    //Sexta
    SKShapeNode *line6_1;
    SKShapeNode *line6_2;
    SKShapeNode *line6_3;
    SKShapeNode *line6_4;
    
    //septima linea
    SKShapeNode *line7_1;
    SKShapeNode *line7_2;
    SKShapeNode *line7_3;
    SKShapeNode *line7_4;
    
    //octava linea
    SKShapeNode *line8_1;
    SKShapeNode *line8_2;
    SKShapeNode *line8_3;
    SKShapeNode *line8_4;
    
    
}
-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        
        self.backgroundColor = [SKColor grayColor];
        
        _inPlace_1 = NO;
        _inPlace_2 = NO;
        _inPlace_3 = NO;
        _inPlace_4 = NO;
        _inPlace_5 = NO;
        _inPlace_6 = NO;
        _inPlace_7 = NO;
        _inPlace_8 = NO;
        
        _enLugar = 0;
        
        _gameMode8 = YES;
        _memoryLoc = CGPointMake(150, 350);

        
        [self setUpFooter];
        [self drawLines];
        [self setUpImages];
        
      //  [self setUpInitialText];
        
    }
    return self;
}

-(void)setUpImages{
    
    
    lineas = [SKSpriteNode spriteNodeWithImageNamed:@"Lineas3-8"];
    lineas.position = CGPointMake(self.size.width/2, self.size.height/2-5);
    [self addChild:lineas];
    
    /*
     lineas = [SKSpriteNode spriteNodeWithImageNamed:@"actividad_1_linas"];
     lineas.position = CGPointMake(self.size.width/2, self.size.height/2+30);
     [self addChild:lineas];
     */
     
    
    title = [SKSpriteNode spriteNodeWithImageNamed:@"Actividad1"];
    title.position = CGPointMake(self.size.width/2 - 20, 700);
    [self addChild:title];
    
    /*
    instructions = [SKSpriteNode spriteNodeWithImageNamed:@"Act1Ins"];
    instructions.position = CGPointMake(self.size.width/2 - 20, 625);
    [self addChild:instructions];
     */
    //
    box = [SKSpriteNode spriteNodeWithImageNamed:@"boxMemory"];
    box.position = CGPointMake(150 , 350);
    [self addChild:box];
    
    decoder = [SKSpriteNode spriteNodeWithImageNamed:@"decoder-3x8"];
    decoder.position = CGPointMake(400 , 382);
    [self addChild:decoder];
    
    ///box
    mem_box_1 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_1.position = CGPointMake(700, 525);
    [self addChild:mem_box_1];
    
    
    mem_box_2 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_2.position = CGPointMake(700, 400);
    [self addChild:mem_box_2];
    
    mem_box_3 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_3.position = CGPointMake(700, 275);
    [self addChild:mem_box_3];
    
    mem_box_4 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_4.position = CGPointMake(700, 150);
    [self addChild:mem_box_4];
    
    mem_box_5 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_5.position = CGPointMake(900, 525);
    [self addChild:mem_box_5];
    
    mem_box_6 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_6.position = CGPointMake(900, 400);
    [self addChild:mem_box_6];
    
    mem_box_7 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_7.position = CGPointMake(900, 275);
    [self addChild:mem_box_7];
    
    mem_box_8 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_8.position = CGPointMake(900, 150);
    [self addChild:mem_box_8];
     
    
    //memoria
    mem_1 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_1.position = _memoryLoc;
    [self addChild:mem_1];
    
    mem_2 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_2.position = _memoryLoc;
    [self addChild:mem_2];
    
    mem_3 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_3.position = _memoryLoc;
    [self addChild:mem_3];
    
    mem_4 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_4.position = _memoryLoc;
    [self addChild:mem_4];
    
    mem_5 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_5.position = _memoryLoc;
    [self addChild:mem_5];
    
    mem_6 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_6.position = _memoryLoc;
    [self addChild:mem_6];
    
    mem_7 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_7.position = _memoryLoc;
    [self addChild:mem_7];
    
    mem_8 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_8.position = _memoryLoc;
    [self addChild:mem_8];
    
    
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

-(void)setUpInitialText
{
    SKLabelNode *label = [SKLabelNode labelNodeWithFontNamed:@"Thonburi-Bold"];
    label.text = @"Ganaste !";
    label.fontSize = 20.0;
    label.fontColor = [UIColor whiteColor];
    label.position = CGPointMake(400, 400);
    [self addChild:label];
}
-(void) drawLines{
    
   // CGMutablePathRef pathToDraw1 = CGPathCreateMutable();

    //Primera memoria
    
   // NSLog(@"hola");

    /*
    line1_1 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL, 470, 424);
    CGPathAddLineToPoint(pathToDraw1, NULL, 500, 424);
    line1_1.path = pathToDraw1;
    //line1_1.strokeColor = [UIColor blackColor];
    //line1_1.strokeColor = [UIColor redColor];
    
    [line1_1 setLineWidth: 2.0];
  //  [line1_1 setStrokeColor:[UIColor blackColor]];
    [self addChild:line1_1];
    
    line1_2 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL,  500, 424);
    CGPathAddLineToPoint(pathToDraw1, NULL, 500,470);
    line1_2.path = pathToDraw1;
    [line1_2 setLineWidth: 2.0];
    //[line1_2 setStrokeColor:[UIColor blackColor]];
    [self addChild:line1_2];
     */
     CGMutablePathRef pathToDraw1 = CGPathCreateMutable();
    
    //Memoria 1
    line1_3 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL, 470,475);
    CGPathAddLineToPoint(pathToDraw1, NULL, 738,475);
    line1_3.path = pathToDraw1;
    [line1_3 setLineWidth: 2.0];
    [self addChild:line1_3];
    
    line1_4 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL, 738,475);
    CGPathAddLineToPoint(pathToDraw1, NULL, 738,480);
    line1_4.path = pathToDraw1;
    [line1_4 setLineWidth: 2.0];
    [self addChild:line1_4];
    
    //Memoria 5
    
     CGMutablePathRef pathToDraw5 = CGPathCreateMutable();
    
    line5_3 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw5, NULL, 470,450);
    CGPathAddLineToPoint(pathToDraw5, NULL, 935,450);
    line5_3.path = pathToDraw5;
    [line5_3 setLineWidth: 2.0];
    [self addChild:line5_3];
    
    line5_4 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw5, NULL, 935,450);
    CGPathAddLineToPoint(pathToDraw5, NULL, 935,480);
    line5_4.path = pathToDraw5;
    [line5_4 setLineWidth: 2.0];
    [self addChild:line5_4];
    
    
    //segunda memoria
    

    CGMutablePathRef pathToDraw2 = CGPathCreateMutable();

    line2_1 =[SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL, 470, 425);
    CGPathAddLineToPoint(pathToDraw2, NULL, 621, 425);
    line2_1.path = pathToDraw2;
    [line2_1 setLineWidth: 2.0];
    [self addChild:line2_1];
    
    line2_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL,  621, 425);
    CGPathAddLineToPoint(pathToDraw2, NULL, 621,350);
    line2_2.path = pathToDraw2;
    [line2_2 setLineWidth: 2.0];
    [self addChild:line2_2];
    
    line2_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL, 621,350);
    CGPathAddLineToPoint(pathToDraw2, NULL, 738,350);
    line2_3.path = pathToDraw2;
    [line2_3 setLineWidth: 2.0];
    [self addChild:line2_3];
    
    line2_4 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL, 738,350);
    CGPathAddLineToPoint(pathToDraw2, NULL, 738,362);
    line2_4.path = pathToDraw2;
    [line2_4 setLineWidth: 2.0];
    [self addChild:line2_4];
    
    CGMutablePathRef pathToDraw6 = CGPathCreateMutable();
    
    //memoria 6
    
    line6_1 =[SKShapeNode node];
    CGPathMoveToPoint(pathToDraw6, NULL, 470, 400);
    CGPathAddLineToPoint(pathToDraw6, NULL, 600, 400);
    line6_1.path = pathToDraw6;
    [line6_1 setLineWidth: 2.0];
    [self addChild:line6_1];
    
    line6_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw6, NULL,  600, 400);
    CGPathAddLineToPoint(pathToDraw6, NULL, 600,325);
    line6_2.path = pathToDraw6;
    [line6_2 setLineWidth: 2.0];
    [self addChild:line6_2];
    
    line6_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw6, NULL, 600,325);
    CGPathAddLineToPoint(pathToDraw6, NULL, 934,325);
    line6_3.path = pathToDraw6;
    [line6_3 setLineWidth: 2.0];
    [self addChild:line6_3];
    
    line6_4 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw6, NULL, 934,325);
    CGPathAddLineToPoint(pathToDraw6, NULL, 934,362);
    line6_4.path = pathToDraw6;
    [line6_4 setLineWidth: 2.0];
    [self addChild:line6_4];
    
    
    //Tercera memoria
    CGMutablePathRef pathToDraw3 = CGPathCreateMutable();

    
    line3_1 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL, 470, 375);
    CGPathAddLineToPoint(pathToDraw3, NULL, 582, 375);
    line3_1.path = pathToDraw3;
    [line3_1 setLineWidth: 2.0];
    [self addChild:line3_1];
    
    line3_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL,  582, 375);
    CGPathAddLineToPoint(pathToDraw3, NULL, 582,225);
    line3_2.path = pathToDraw3;
    [line3_2 setLineWidth: 2.0];
    [self addChild:line3_2];
    
    line3_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL, 582,225);
    CGPathAddLineToPoint(pathToDraw3, NULL, 738,225);
    line3_3.path = pathToDraw3;
    [line3_3 setLineWidth: 2.0];
    [self addChild:line3_3];
    
    line3_4 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL, 738,225);
    CGPathAddLineToPoint(pathToDraw3, NULL, 738,232);
    line3_4.path = pathToDraw3;
    [line3_4 setLineWidth: 2.0];
    [self addChild:line3_4];
    
    CGMutablePathRef pathToDraw7 = CGPathCreateMutable();

    //Septima memoria
    
    line7_1 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw7, NULL, 470, 350);
    CGPathAddLineToPoint(pathToDraw7, NULL, 562, 350);
    line7_1.path = pathToDraw7;
    [line7_1 setLineWidth: 2.0];
    [self addChild:line7_1];
    
    line7_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw7, NULL,  562, 350);
    CGPathAddLineToPoint(pathToDraw7, NULL, 562,200);
    line7_2.path = pathToDraw7;
    [line7_2 setLineWidth: 2.0];
    [self addChild:line7_2];
    
    line7_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw7, NULL, 562,200);
    CGPathAddLineToPoint(pathToDraw7, NULL, 938,200);
    line7_3.path = pathToDraw7;
    [line7_3 setLineWidth: 2.0];
    [self addChild:line7_3];
    
    line7_4 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw7, NULL, 938,200);
    CGPathAddLineToPoint(pathToDraw7, NULL, 938,232);
    line7_4.path = pathToDraw7;
    [line7_4 setLineWidth: 2.0];
    [self addChild:line7_4];
    
    
    
    //cuarta memoria
    CGMutablePathRef pathToDraw4 = CGPathCreateMutable();

    line4_1 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw4, NULL, 470, 325);
    CGPathAddLineToPoint(pathToDraw4, NULL, 542, 325);
    line4_1.path = pathToDraw4;
    [line4_1 setLineWidth: 2.0];
    [self addChild:line4_1];
    
    line4_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw4, NULL,  542, 325);
    CGPathAddLineToPoint(pathToDraw4, NULL, 542,100);
    line4_2.path = pathToDraw4;
    [line4_2 setLineWidth: 2.0];
    [self addChild:line4_2];
    
    line4_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw4, NULL, 542,100);
    CGPathAddLineToPoint(pathToDraw4, NULL, 738,100);
    line4_3.path = pathToDraw4;
    [line4_3 setLineWidth: 2.0];
    [self addChild:line4_3];
    
    line4_4 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw4, NULL, 738,100);
    CGPathAddLineToPoint(pathToDraw4, NULL, 738,108);
    line4_4.path = pathToDraw4;
    [line4_4 setLineWidth: 2.0];
    [self addChild:line4_4];
    
    //octava memoria
    CGMutablePathRef pathToDraw8 = CGPathCreateMutable();
    
    line8_1 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw8, NULL, 470, 300);
    CGPathAddLineToPoint(pathToDraw8, NULL, 515, 300);
    line8_1.path = pathToDraw8;
    [line8_1 setLineWidth: 2.0];
    [self addChild:line8_1];
    
    line8_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw8, NULL,  515, 300);
    CGPathAddLineToPoint(pathToDraw8, NULL, 515,90);
    line8_2.path = pathToDraw8;
    [line8_2 setLineWidth: 2.0];
    [self addChild:line8_2];
    
    line8_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw8, NULL, 515,90);
    CGPathAddLineToPoint(pathToDraw8, NULL, 948,90);
    line8_3.path = pathToDraw8;
    [line8_3 setLineWidth: 2.0];
    [self addChild:line8_3];
    
    line8_4 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw8, NULL, 948,90);
    CGPathAddLineToPoint(pathToDraw8, NULL, 948,108);
    line8_4.path = pathToDraw8;
    [line8_4 setLineWidth: 2.0];
    [self addChild:line8_4];
    
}

- (void)willMoveFromView:(SKView *)view
{
    
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
    /* Called when a touch begins */
    for (UITouch *touch in touches)
    {
        CGPoint location = [touch locationInNode:self];
        NSLog(@"** TOUCH LOCATION ** \nx: %f / y: %f", location.x, location.y);
        if([startButton containsPoint:location])
        {
            Scene00 *scene = [[Scene00 alloc] initWithSize:self.size];
            SKTransition *sceneTransition = [SKTransition fadeWithColor:[UIColor darkGrayColor] duration:1];
            [self.view presentScene:scene transition:sceneTransition];
        }
        else if([mem_1 containsPoint:location])
        {
            _touchMemory_1 = YES;
            _touchPoint = location;
            
        }
        
        else if([mem_2 containsPoint:location])
        {
            _touchMemory_2 = YES;
            _touchPoint = location;
            
        }
        else if([mem_3 containsPoint:location])
        {
            _touchMemory_3 = YES;
            _touchPoint = location;
            
        }
        else if([mem_4 containsPoint:location])
        {
            _touchMemory_4 = YES;
            _touchPoint = location;
            
        }
        else if([mem_5 containsPoint:location] && _gameMode8)
        {
            _touchMemory_5 = YES;
            _touchPoint = location;
            
        }
        else if([mem_6 containsPoint:location] && _gameMode8)
        {
            _touchMemory_6 = YES;
            _touchPoint = location;
            
        }
        else if([mem_7 containsPoint:location] && _gameMode8)
        {
            _touchMemory_7 = YES;
            _touchPoint = location;
            
        }
        else if([mem_8 containsPoint:location] && _gameMode8)
        {
            _touchMemory_8 = YES;
            _touchPoint = location;
            
        }
        
        else if ([decoder containsPoint:location]){
            if(_gameMode8){
                //lineas
                decoder.texture = [SKTexture textureWithImageNamed:@"decoder-2x4"];
                lineas.texture = [SKTexture textureWithImageNamed:@"Lineas2-4"];
                
                [self resetGame];
                
                [self changeLine1:[UIColor whiteColor]];
                [self changeLine2:[UIColor whiteColor]];
                [self changeLine3:[UIColor whiteColor]];
                [self changeLine4:[UIColor whiteColor]];
                [self changeLine5:[UIColor grayColor]];
                [self changeLine6:[UIColor grayColor]];
                [self changeLine7:[UIColor grayColor]];
                [self changeLine8:[UIColor grayColor]];
                
                mem_box_5.hidden = YES;
                mem_box_6.hidden = YES;
                mem_box_7.hidden = YES;
                mem_box_8.hidden = YES;
                
                mem_5.hidden = YES;
                mem_6.hidden = YES;
                mem_7.hidden = YES;
                mem_8.hidden = YES;
                
                _gameMode8 = NO;
                
            }
            else{
                
                decoder.texture = [SKTexture textureWithImageNamed:@"decoder-3x8"];
                lineas.texture = [SKTexture textureWithImageNamed:@"Lineas3-8"];
                [self resetGame];
                [self changeLine1:[UIColor whiteColor]];
                [self changeLine2:[UIColor whiteColor]];
                [self changeLine3:[UIColor whiteColor]];
                [self changeLine4:[UIColor whiteColor]];
                [self changeLine5:[UIColor whiteColor]];
                [self changeLine6:[UIColor whiteColor]];
                [self changeLine7:[UIColor whiteColor]];
                [self changeLine8:[UIColor whiteColor]];
                
                mem_box_5.hidden = NO;
                mem_box_6.hidden = NO;
                mem_box_7.hidden = NO;
                mem_box_8.hidden = NO;
                
                mem_5.hidden = NO;
                mem_6.hidden = NO;
                mem_7.hidden = NO;
                mem_8.hidden = NO;
                _gameMode8 = YES;
            }
            
            
        }
        
    }
}
-(void) resetGame
{
    _inPlace_1 = NO;
    _inPlace_2 = NO;
    _inPlace_3 = NO;
    _inPlace_4 = NO;
    _inPlace_5 = NO;
    _inPlace_6 = NO;
    _inPlace_7 = NO;
    _inPlace_8 = NO;
    
    mem_1.position = _memoryLoc;
    mem_2.position = _memoryLoc;
    mem_3.position = _memoryLoc;
    mem_4.position = _memoryLoc;
    mem_5.position = _memoryLoc;
    mem_6.position = _memoryLoc;
    mem_7.position = _memoryLoc;
    mem_8.position = _memoryLoc;
    
    _enLugar = 0;

}


#pragma mark -
#pragma mark Game Loop

-(void) changeLine1:(UIColor *) color {
    
    [line1_1 setStrokeColor: color];
    [line1_2 setStrokeColor: color];
    [line1_3 setStrokeColor: color];
    [line1_4 setStrokeColor: color];
}
-(void) changeLine2:(UIColor *) color {
    
    [line2_1 setStrokeColor: color];
    [line2_2 setStrokeColor: color];
    [line2_3 setStrokeColor: color];
    [line2_4 setStrokeColor: color];
}
-(void) changeLine3:(UIColor *) color {
    
    [line3_1 setStrokeColor: color];
    [line3_2 setStrokeColor: color];
    [line3_3 setStrokeColor: color];
    [line3_4 setStrokeColor: color];
}
-(void) changeLine4:(UIColor *) color {
    
    [line4_1 setStrokeColor: color];
    [line4_2 setStrokeColor: color];
    [line4_3 setStrokeColor: color];
    [line4_4 setStrokeColor: color];
}
-(void) changeLine5:(UIColor *) color {
    
    [line5_1 setStrokeColor: color];
    [line5_2 setStrokeColor: color];
    [line5_3 setStrokeColor: color];
    [line5_4 setStrokeColor: color];
}
-(void) changeLine6:(UIColor *) color {
    
    [line6_1 setStrokeColor: color];
    [line6_2 setStrokeColor: color];
    [line6_3 setStrokeColor: color];
    [line6_4 setStrokeColor: color];
}
-(void) changeLine7:(UIColor *) color {
    
    [line7_1 setStrokeColor: color];
    [line7_2 setStrokeColor: color];
    [line7_3 setStrokeColor: color];
    [line7_4 setStrokeColor: color];
}
-(void) changeLine8:(UIColor *) color {
    
    [line8_1 setStrokeColor: color];
    [line8_2 setStrokeColor: color];
    [line8_3 setStrokeColor: color];
    [line8_4 setStrokeColor: color];
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    _touchPoint = [[touches anyObject] locationInNode:self];
}

-(void) check: (CGPoint) currentPoint:(BOOL)touchMemory: (BOOL) place: (SKSpriteNode *) nodo{
    
   
        //CGPoint currentPoint = [[touches anyObject] locationInNode:self];
        // NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
        
        if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
            currentPoint.y >= 487 && currentPoint.y <= 560 )
        {
            
            currentPoint.x = mem_box_1.position.x;
            currentPoint.y = mem_box_1.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine1:[UIColor redColor]];
            
            place = YES;
            
        }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                  currentPoint.y >= 365 && currentPoint.y <= 430 )
        {
            
            currentPoint.x = mem_box_2.position.x;
            currentPoint.y = mem_box_2.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine2:[UIColor redColor]];
            
            
            place = YES;
            
        }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                  currentPoint.y >= 236 && currentPoint.y <= 309 )
        {
            
            currentPoint.x = mem_box_3.position.x;
            currentPoint.y = mem_box_3.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine3:[UIColor redColor]];
            
            place = YES;
            
        }
        else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                 currentPoint.y >= 110 && currentPoint.y <= 183 )
        {
            
            currentPoint.x = mem_box_4.position.x;
            currentPoint.y = mem_box_4.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine4:[UIColor redColor]];
            
            
            place = YES;
            
        }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                  currentPoint.y >= 487 && currentPoint.y <= 560 )
        {
            
            currentPoint.x = mem_box_5.position.x;
            currentPoint.y = mem_box_5.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine5:[UIColor redColor]];
            
            place = YES;
            
        }
        else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                 currentPoint.y >= 365 && currentPoint.y <= 430 )
        {
            
            currentPoint.x = mem_box_6.position.x;
            currentPoint.y = mem_box_6.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine6:[UIColor redColor]];
            
            place = YES;
            
        }
        else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                 currentPoint.y >= 236 && currentPoint.y <= 309 )
        {
            
            currentPoint.x = mem_box_7.position.x;
            currentPoint.y = mem_box_7.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine7:[UIColor redColor]];
            
            place = YES;
            
        }
        else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                 currentPoint.y >= 110 && currentPoint.y <= 183 )
        {
            
            currentPoint.x = mem_box_8.position.x;
            currentPoint.y = mem_box_8.position.y;
            
            nodo.position = currentPoint;
            
            [self changeLine8:[UIColor redColor]];
            
            place = YES;
            
        }
        
        
        else{
            SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
            SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
            [nodo runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
        }
        
        
        touchMemory = NO;
    

    
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    if(_gameMode8){
        
        if (_touchMemory_1 && (!_inPlace_1))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
           // [self check:currentPoint :_touchMemory_1 :_inPlace_1 :mem_1];
          // /*
            
           // NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_1.position = currentPoint;

                [self changeLine1:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;

            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];

                
                _inPlace_1 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];

                
                _inPlace_1 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];

                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }

            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_1 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_1 = NO;
            // */
        }
        
        if (_touchMemory_2 && (!_inPlace_2))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_2 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_2 = NO;
        }
        if (_touchMemory_3 && (!_inPlace_3))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _enLugar++;
                _inPlace_3 = YES;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
            
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_3 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_3 = NO;
        }
        if (_touchMemory_4 && (!_inPlace_4))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_4 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_4 = NO;
        }
        if (_touchMemory_5 && (!_inPlace_5))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_5.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_5 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_5 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_5 = NO;
        }
        if (_touchMemory_6 && (!_inPlace_6))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_6.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_6 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_7 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_6 = NO;
        }
        if (_touchMemory_7 && (!_inPlace_7))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_7.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_7 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_7 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_7 = NO;
        }
        if (_touchMemory_8 && (!_inPlace_8))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_8.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_8 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_8 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_8 = NO;
        }

    }
    else{
        if (_touchMemory_1 && (!_inPlace_1))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            // [self check:currentPoint :_touchMemory_1 :_inPlace_1 :mem_1];
            // /*
            
            // NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_1.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_1 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_1 = NO;
            // */
        }
        if (_touchMemory_2 && (!_inPlace_2))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_1 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_2.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_2 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_2 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_2 = NO;
        }
        if (_touchMemory_3 && (!_inPlace_3))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _enLugar++;
                _inPlace_3 = YES;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_3.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_3 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_3 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_3 = NO;
        }
        if (_touchMemory_4 && (!_inPlace_4))
        {
            CGPoint currentPoint = [[touches anyObject] locationInNode:self];
            //NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
            
            if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_1.position.x;
                currentPoint.y = mem_box_1.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine1:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_2.position.x;
                currentPoint.y = mem_box_2.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine2:[UIColor redColor]];
                
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                      currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_3.position.x;
                currentPoint.y = mem_box_3.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine3:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 645 && currentPoint.x <= 755 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_4.position.x;
                currentPoint.y = mem_box_4.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine4:[UIColor redColor]];
                
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                      currentPoint.y >= 487 && currentPoint.y <= 560 )
            {
                
                currentPoint.x = mem_box_5.position.x;
                currentPoint.y = mem_box_5.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine5:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 365 && currentPoint.y <= 430 )
            {
                
                currentPoint.x = mem_box_6.position.x;
                currentPoint.y = mem_box_6.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine6:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 236 && currentPoint.y <= 309 )
            {
                
                currentPoint.x = mem_box_7.position.x;
                currentPoint.y = mem_box_7.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine7:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            else if ( currentPoint.x >= 845 && currentPoint.x <= 955 &&
                     currentPoint.y >= 110 && currentPoint.y <= 183 )
            {
                
                currentPoint.x = mem_box_8.position.x;
                currentPoint.y = mem_box_8.position.y;
                
                mem_4.position = currentPoint;
                
                [self changeLine8:[UIColor redColor]];
                
                _inPlace_4 = YES;
                _enLugar++;
                
            }
            
            
            else{
                SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
                SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
                [mem_4 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
            }
            
            
            _touchMemory_4 = NO;
        }
    }
    /*
    if (_touchMemory_2 && (!_inPlace_2))
    {
        CGPoint currentPoint = [[touches anyObject] locationInNode:self];
        
        if ( currentPoint.x >= 738 && currentPoint.x <= 863 &&
            currentPoint.y >= 360 && currentPoint.y <= 440 )
        {
            
            currentPoint.x = mem_box_2.position.x;
            currentPoint.y = mem_box_2.position.y;
            
            mem_2.position = currentPoint;
            
            line2_1.strokeColor = [UIColor redColor];
            [line2_1 setStrokeColor:[UIColor redColor]];
            [line2_2 setStrokeColor:[UIColor redColor]];
            [line2_3 setStrokeColor:[UIColor redColor]];
            [line2_4 setStrokeColor:[UIColor redColor]];
            _inPlace_2 = YES;

            NSLog(@"cambio color");
            
            
        }else{
            SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
            SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
            [mem_2 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
        }
        
        _touchMemory_2 = NO;
        
    }
    if (_touchMemory_3 && (!_inPlace_3))
    {
        CGPoint currentPoint = [[touches anyObject] locationInNode:self];
        
        if ( currentPoint.x >= 738 && currentPoint.x <= 863 &&
            currentPoint.y >= 230 && currentPoint.y <= 315 )
        {
            
            currentPoint.x = mem_box_3.position.x;
            currentPoint.y = mem_box_3.position.y;
            
            mem_3.position = currentPoint;
            line3_1.strokeColor = [UIColor redColor];
            [line3_1 setStrokeColor:[UIColor redColor]];
            [line3_2 setStrokeColor:[UIColor redColor]];
            [line3_3 setStrokeColor:[UIColor redColor]];
            [line3_4 setStrokeColor:[UIColor redColor]];
            _inPlace_3 = YES;
            
        }else{
            SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
            SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
            [mem_3 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
        }
        
        _touchMemory_3 = NO;
        
    }
    if (_touchMemory_4 && (!_inPlace_4))
    {
        CGPoint currentPoint = [[touches anyObject] locationInNode:self];
        
        if ( currentPoint.x >= 738 && currentPoint.x <= 863 &&
            currentPoint.y >= 110 && currentPoint.y <= 190 )
        {
            
            currentPoint.x = mem_box_4.position.x;
            currentPoint.y = mem_box_4.position.y;
            
            mem_4.position = currentPoint;
            line4_1.strokeColor = [UIColor redColor];
            [line4_1 setStrokeColor:[UIColor redColor]];
            [line4_2 setStrokeColor:[UIColor redColor]];
            [line4_3 setStrokeColor:[UIColor redColor]];
            [line4_4 setStrokeColor:[UIColor redColor]];
            _inPlace_4 = YES;
            
        }else{
            SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
            SKAction *actionMoveY = [SKAction moveToY:350 duration:1.0];
            [mem_4 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
        }
        
        _touchMemory_4 = NO;
        
    }
     */

}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    _touchMemory_1 = NO;
    _touchMemory_2 = NO;
    _touchMemory_3 = NO;
    _touchMemory_4 = NO;
    _touchMemory_5 = NO;
    _touchMemory_6 = NO;
    _touchMemory_7 = NO;
    _touchMemory_8 = NO;

}

#pragma mark -
#pragma mark Game Loop

-(void)update:(CFTimeInterval)currentTime
{
    if((_enLugar >= 8)&& _gameMode8 ){
        [self setUpInitialText];
        
    }
    if ((!_gameMode8) && (_enLugar >= 4)){
        [self setUpInitialText];
    }
    
    if (_touchMemory_1 && (!_inPlace_1))
    {
        _touchPoint.x = Clamp(_touchPoint.x, mem_1.size.width / 2, self.size.width - mem_1.size.width / 2);
        _touchPoint.y = Clamp(_touchPoint.y,
                              startButton.size.height +  mem_1.size.height / 2,
                              self.size.height - mem_1.size.height / 2);
        
        mem_1.position = _touchPoint;
    }
    if (_touchMemory_2 && (!_inPlace_2))
    {
        _touchPoint.x = Clamp(_touchPoint.x, mem_2.size.width / 2, self.size.width - mem_2.size.width / 2);
        _touchPoint.y = Clamp(_touchPoint.y,
                              startButton.size.height +  mem_2.size.height / 2,
                              self.size.height - mem_2.size.height / 2);
        
        mem_2.position = _touchPoint;
    }
    if (_touchMemory_3 && (!_inPlace_3))
    {
        _touchPoint.x = Clamp(_touchPoint.x, mem_3.size.width / 2, self.size.width - mem_3.size.width / 2);
        _touchPoint.y = Clamp(_touchPoint.y,
                              startButton.size.height +  mem_3.size.height / 2,
                              self.size.height - mem_3.size.height / 2);
        
        mem_3.position = _touchPoint;
    }
    if (_touchMemory_4 && (!_inPlace_4))
    {
        _touchPoint.x = Clamp(_touchPoint.x, mem_4.size.width / 2, self.size.width - mem_4.size.width / 2);
        _touchPoint.y = Clamp(_touchPoint.y,
                              startButton.size.height +  mem_4.size.height / 2,
                              self.size.height - mem_4.size.height / 2);
        
        mem_4.position = _touchPoint;
    }
    if(_gameMode8){
        
        if (_touchMemory_5 && (!_inPlace_5))
        {
            _touchPoint.x = Clamp(_touchPoint.x, mem_5.size.width / 2, self.size.width - mem_5.size.width / 2);
            _touchPoint.y = Clamp(_touchPoint.y,
                                  startButton.size.height +  mem_5.size.height / 2,
                                  self.size.height - mem_5.size.height / 2);
            
            mem_5.position = _touchPoint;
        }
        if (_touchMemory_6 && (!_inPlace_6))
        {
            _touchPoint.x = Clamp(_touchPoint.x, mem_6.size.width / 2, self.size.width - mem_6.size.width / 2);
            _touchPoint.y = Clamp(_touchPoint.y,
                                  startButton.size.height +  mem_6.size.height / 2,
                                  self.size.height - mem_6.size.height / 2);
            
            mem_6.position = _touchPoint;
        }
        if (_touchMemory_7 && (!_inPlace_7))
        {
            _touchPoint.x = Clamp(_touchPoint.x, mem_7.size.width / 2, self.size.width - mem_7.size.width / 2);
            _touchPoint.y = Clamp(_touchPoint.y,
                                  startButton.size.height +  mem_7.size.height / 2,
                                  self.size.height - mem_7.size.height / 2);
            
            mem_7.position = _touchPoint;
        }
        if (_touchMemory_8 && (!_inPlace_8))
        {
            _touchPoint.x = Clamp(_touchPoint.x, mem_8.size.width / 2, self.size.width - mem_8.size.width / 2);
            _touchPoint.y = Clamp(_touchPoint.y,
                                  startButton.size.height +  mem_8.size.height / 2,
                                  self.size.height - mem_8.size.height / 2);
            
            mem_8.position = _touchPoint;
        }
    }
    
    
    
    
}
@end
