//
//  GameViewController.m
//  Memoria-Visualizacion
//
//  Created by Enrique O Hernandez on 4/14/15.
//  Copyright (c) 2015 NLCJohn. All rights reserved.
//

#import "GameViewController.h"
#import "Scene00.h"

@implementation SKScene (Unarchive)

@end

@implementation GameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   
    
}

 - (void)viewWillLayoutSubviews
 {
 [super viewWillLayoutSubviews];
 
 // Configure the view.
 
     SKView *skView = (SKView *)self.view;
     
     
     if (!skView.scene)
     {
         skView.showsFPS = YES;
         skView.showsNodeCount = YES;
         
         
         // Create and configure the scene.
         Scene00 *scene = [Scene00 sceneWithSize:skView.bounds.size];
         scene.scaleMode = SKSceneScaleModeAspectFill;
         
         // Present the scene.
         [skView presentScene:scene];
     }
 
 
 }


- (BOOL)shouldAutorotate
{
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

@end
