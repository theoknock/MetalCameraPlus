//
//  MetalViewController.m
//  MetalViewController
//
//  Created by Xcode Developer on 8/30/21.
//

#import "MetalViewController.h"
#import "MetalRenderer.h"
@interface MetalViewController ()

@end

@implementation MetalViewController
{
    MetalRenderer * renderer;
}


@dynamic view;

- (void)loadView {
    self.view = [[MTKView alloc] initWithFrame:UIScreen.mainScreen.bounds];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setDevice:self.view.preferredDevice];
    [self.view setFramebufferOnly:FALSE];
    
    [self.view.layer setBackgroundColor:[UIColor grayColor].CGColor];
    ((CAMetalLayer *)self.view.layer).contentsGravity = kCAGravityResizeAspectFill;
    ((CAMetalLayer *)self.view.layer).contentsScale= [[UIScreen mainScreen] nativeScale];
    ((CAMetalLayer *)self.view.layer).pixelFormat = MTLPixelFormatBGRA8Unorm;
    ((CAMetalLayer *)self.view.layer).framebufferOnly = YES;
    
    renderer = [[MetalRenderer alloc] initWithMetalKitView:self.view];
}

@end
