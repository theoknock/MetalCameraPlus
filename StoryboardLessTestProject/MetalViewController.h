//
//  MetalViewController.h
//  MetalViewController
//
//  Created by Xcode Developer on 8/30/21.
//

#import <UIKit/UIKit.h>
#import <Metal/Metal.h>
#import <MetalKit/MetalKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MetalViewController : UIViewController

@property (nonatomic, strong) MTKView * view;

@end

NS_ASSUME_NONNULL_END
