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
    BOOL _touchMemory_1;
    BOOL _touchMemory_2;
    BOOL _touchMemory_3;
    BOOL _touchMemory_4;
    //
    BOOL _inPlace_1;
    BOOL _inPlace_2;
    BOOL _inPlace_3;
    BOOL _inPlace_4;



    CGPoint _touchPoint;
    
    //imagenes
    SKSpriteNode *title;
    SKSpriteNode *box;
    SKSpriteNode *mem_box_1;
    SKSpriteNode *mem_box_2;
    SKSpriteNode *mem_box_3;
    SKSpriteNode *mem_box_4;
    SKSpriteNode *mem_1;
    SKSpriteNode *mem_2;
    SKSpriteNode *mem_3;
    SKSpriteNode *mem_4;
    SKSpriteNode *decoder;
    SKSpriteNode *instructions;
    
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
    
    
}
-(id)initWithSize:(CGSize)size
{
    if(self=[super initWithSize:size]){
        
        
        self.backgroundColor = [SKColor grayColor];
        
        _inPlace_1 = NO;
        _inPlace_2 = NO;
        _inPlace_3 = NO;
        _inPlace_4 = NO;

        
        [self setUpFooter];
        [self drawLines];
        [self setUpImages];
        
      //  [self setUpInitialText];
        
    }
    return self;
}

-(void)setUpImages{
    
    title = [SKSpriteNode spriteNodeWithImageNamed:@"Actividad1"];
    title.position = CGPointMake(self.size.width/2 - 20, 700);
    [self addChild:title];
    
    instructions = [SKSpriteNode spriteNodeWithImageNamed:@"Act1Ins"];
    instructions.position = CGPointMake(self.size.width/2 - 20, 625);
    [self addChild:instructions];
    //
    box = [SKSpriteNode spriteNodeWithImageNamed:@"box"];
    box.position = CGPointMake(150 , 350);
    [self addChild:box];
    
    decoder = [SKSpriteNode spriteNodeWithImageNamed:@"decoder_2x4"];
    decoder.position = CGPointMake(400 , 350);
    [self addChild:decoder];
    
    ///box
    mem_box_1 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_1.position = CGPointMake(800, 525);
    [self addChild:mem_box_1];
    
    mem_box_2 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_2.position = CGPointMake(800, 400);
    [self addChild:mem_box_2];
    
    mem_box_3 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_3.position = CGPointMake(800, 275);
    [self addChild:mem_box_3];
    
    mem_box_4 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_box"];
    mem_box_4.position = CGPointMake(800, 150);
    [self addChild:mem_box_4];
    
    //memoria
    mem_1 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_1.position = CGPointMake(150, 500);
    [self addChild:mem_1];
    
    mem_2 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_2.position = CGPointMake(150, 400);
    [self addChild:mem_2];
    
    mem_3 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_3.position = CGPointMake(150, 300);
    [self addChild:mem_3];
    
    mem_4 = [SKSpriteNode spriteNodeWithImageNamed:@"memoria_act1"];
    mem_4.position = CGPointMake(150, 200);
    [self addChild:mem_4];
    
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
    label.text = @"Actividad 1 !";
    label.fontSize = 20.0;
    label.fontColor = [UIColor whiteColor];
    label.position = CGPointMake(400, 400);
    [self addChild:label];
}
-(void) drawLines{
    
    CGMutablePathRef pathToDraw = CGPathCreateMutable();
    CGMutablePathRef pathToDraw1 = CGPathCreateMutable();


    //Primera memoria
    
    NSLog(@"hola");

    line1_1 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL, 470, 424);
    CGPathAddLineToPoint(pathToDraw1, NULL, 500, 424);
    line1_1.path = pathToDraw1;
    line1_1.strokeColor = [UIColor blackColor];
    //line1_1.strokeColor = [UIColor redColor];
    
    [line1_1 setLineWidth: 2.0];
  //  [line1_1 setStrokeColor:[UIColor blackColor]];
    [self addChild:line1_1];
    
    line1_2 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL,  500, 424);
    CGPathAddLineToPoint(pathToDraw1, NULL, 500,460);
    line1_2.path = pathToDraw1;
    [line1_2 setLineWidth: 2.0];
    //[line1_2 setStrokeColor:[UIColor blackColor]];
    [self addChild:line1_2];
    
    line1_3 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL, 500,460);
    CGPathAddLineToPoint(pathToDraw1, NULL, 838,460);
    line1_3.path = pathToDraw1;
    [line1_3 setLineWidth: 2.0];
  //  [line1_3 setStrokeColor:[UIColor blackColor]];
    [self addChild:line1_3];
    
    line1_4 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw1, NULL, 838,460);
    CGPathAddLineToPoint(pathToDraw1, NULL, 838,482);
    line1_4.path = pathToDraw1;
    [line1_4 setLineWidth: 2.0];
   // [line1_4 setStrokeColor:[UIColor blackColor]];
    [self addChild:line1_4];
    
    
    //segunda memoria
    

    CGMutablePathRef pathToDraw2 = CGPathCreateMutable();

    line2_1 =[SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL, 470, 384);
    CGPathAddLineToPoint(pathToDraw2, NULL, 550, 384);
    line2_1.path = pathToDraw2;
    [line2_1 setLineWidth: 2.0];
   // [line2_1 setStrokeColor:[UIColor blackColor]];
    [self addChild:line2_1];
    
    line2_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL,  550, 384);
    CGPathAddLineToPoint(pathToDraw2, NULL, 550,340);
    line2_2.path = pathToDraw2;
    [line2_2 setLineWidth: 2.0];
   // [line2_2 setStrokeColor:[UIColor blackColor]];
    [self addChild:line2_2];
    
    line2_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL, 550,340);
    CGPathAddLineToPoint(pathToDraw2, NULL, 838,340);
    line2_3.path = pathToDraw2;
    [line2_3 setLineWidth: 2.0];
   // [line2_3 setStrokeColor:[UIColor blackColor]];
    [self addChild:line2_3];
    
    line2_4 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw2, NULL, 838,340);
    CGPathAddLineToPoint(pathToDraw2, NULL, 838,362);
    line2_4.path = pathToDraw2;
    [line2_4 setLineWidth: 2.0];
   // [line2_4 setStrokeColor:[UIColor blackColor]];
    [self addChild:line2_4];
    
    
    //Tercera memoria
    CGMutablePathRef pathToDraw3 = CGPathCreateMutable();

    
    line3_1 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL, 470, 344);
    CGPathAddLineToPoint(pathToDraw3, NULL, 530, 344);
    line3_1.path = pathToDraw3;
    [line3_1 setLineWidth: 2.0];
    //[line3_1 setStrokeColor:[UIColor blackColor]];
    [self addChild:line3_1];
    
    line3_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL,  530, 344);
    CGPathAddLineToPoint(pathToDraw3, NULL, 530,215);
    line3_2.path = pathToDraw3;
    [line3_2 setLineWidth: 2.0];
    //[line3_2 setStrokeColor:[UIColor blackColor]];
    [self addChild:line3_2];
    
    line3_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL, 530,215);
    CGPathAddLineToPoint(pathToDraw3, NULL, 839,215);
    line3_3.path = pathToDraw3;
    [line3_3 setLineWidth: 2.0];
    //[line3_3 setStrokeColor:[UIColor blackColor]];
    [self addChild:line3_3];
    
    line3_4 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw3, NULL, 839,215);
    CGPathAddLineToPoint(pathToDraw3, NULL, 839,232);
    line3_4.path = pathToDraw3;
    [line3_4 setLineWidth: 2.0];
   // [line3_4 setStrokeColor:[UIColor blackColor]];
    [self addChild:line3_4];
    
    //cuarta linea
    CGMutablePathRef pathToDraw4 = CGPathCreateMutable();

    line4_1 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw4, NULL, 470, 304);
    CGPathAddLineToPoint(pathToDraw4, NULL, 500, 304);
    line4_1.path = pathToDraw4;
    [line4_1 setLineWidth: 2.0];
    //[line4_1 setStrokeColor:[UIColor blackColor]];
    [self addChild:line4_1];
    
    line4_2 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw4, NULL,  500, 304);
    CGPathAddLineToPoint(pathToDraw4, NULL, 500,90);
    line4_2.path = pathToDraw4;
    [line4_2 setLineWidth: 2.0];
   // [line4_2 setStrokeColor:[UIColor blackColor]];
    [self addChild:line4_2];
    
    line4_3 = [SKShapeNode node];
    CGPathMoveToPoint(pathToDraw4, NULL, 500,90);
    CGPathAddLineToPoint(pathToDraw4, NULL, 839,90);
    line4_3.path = pathToDraw4;
    [line4_3 setLineWidth: 2.0];
   // [line4_3 setStrokeColor:[UIColor blackColor]];
    [self addChild:line4_3];
    
    line4_4 = [[SKShapeNode alloc] init];
    CGPathMoveToPoint(pathToDraw, NULL, 839,90);
    CGPathAddLineToPoint(pathToDraw, NULL, 839,108);
    line4_4.path = pathToDraw;
    [line4_4 setLineWidth: 2.0];
    line4_4.strokeColor = [UIColor blackColor];
   // [line4_4 setStrokeColor:[UIColor blackColor]];
    [self addChild:line4_4];
    
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
        
    }
}

#pragma mark -
#pragma mark Game Loop

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    _touchPoint = [[touches anyObject] locationInNode:self];
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    if (_touchMemory_1 && (!_inPlace_1))
    {
        CGPoint currentPoint = [[touches anyObject] locationInNode:self];
        NSLog(@"**  ** \nx: %f / y: %f", currentPoint.x, currentPoint.y);
        
        if ( currentPoint.x >= 738 && currentPoint.x <= 863 &&
            currentPoint.y >= 480 && currentPoint.y <= 563 )
        {
            
            currentPoint.x = mem_box_1.position.x;
            currentPoint.y = mem_box_1.position.y;
            
            mem_1.position = currentPoint;

            line1_1.strokeColor = [UIColor redColor];
            [line1_1 setStrokeColor:[UIColor redColor]];
            
            [line1_1 setStrokeColor:[UIColor redColor]];
            [line1_2 setStrokeColor:[UIColor redColor]];
            [line1_3 setStrokeColor:[UIColor redColor]];
            [line1_4 setStrokeColor:[UIColor redColor]];
            _inPlace_1 = YES;

        }else{
            SKAction *actionMoveX = [SKAction moveToX:150 duration:1.0];
            SKAction *actionMoveY = [SKAction moveToY:500 duration:1.0];
            [mem_1 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
        }
        
        _touchMemory_1 = NO;

    }
    
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
            SKAction *actionMoveY = [SKAction moveToY:500 duration:1.0];
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
            SKAction *actionMoveY = [SKAction moveToY:500 duration:1.0];
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
            SKAction *actionMoveY = [SKAction moveToY:500 duration:1.0];
            [mem_4 runAction:[SKAction group:@[actionMoveY, actionMoveX]]];
        }
        
        _touchMemory_4 = NO;
        
    }

}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    _touchMemory_1 = NO;
    _touchMemory_2 = NO;
    _touchMemory_3 = NO;
    _touchMemory_4 = NO;

}

#pragma mark -
#pragma mark Game Loop

-(void)update:(CFTimeInterval)currentTime
{
    
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
    
    
    
    
}
@end
