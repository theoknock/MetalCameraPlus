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
    
    renderer = [[MetalRenderer alloc] initWithMetalKitView:self.view];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
